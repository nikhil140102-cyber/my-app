import 'package:flutter/material.dart';

/// No backend is connected. Choose Supabase or Firebase in the builder
/// (App → Backend) to make sign-in and saving work.
class Backend {
  static Future<void> init() async {}

  static bool get isSignedIn => false;

  static String? get userEmail => null;

  static Never _missing() => throw Exception('No backend connected. Choose Supabase or Firebase under App → Backend in the builder.');

  static Future<void> signIn(String email, String password) async => _missing();

  static Future<void> signUp(String email, String password, {String name = ''}) async => _missing();

  static Future<void> signOut() async => _missing();

  static Future<void> sendCode(String contact, {bool phone = false}) async => _missing();

  static Future<void> verifyCode(String code, {String contact = '', bool phone = false}) async => _missing();

  static Future<List<Map<String, dynamic>>> list(String table, {int limit = 50}) async => _missing();

  static Future<void> insert(String table, Map<String, dynamic> data) async => _missing();
}

String friendlyError(Object e) => e.toString().replaceFirst('Exception: ', '');

/// Fills {{field}} placeholders from a data-list row, and {{user.email}}
/// from the signed-in user.
String fill(Map<String, dynamic>? item, String template) {
  return template.replaceAllMapped(RegExp(r'\{\{\s*([\w.]+)\s*\}\}'), (m) {
    final key = m[1]!;
    if (key == 'user.email') return Backend.userEmail ?? '';
    Object? value = item;
    for (final part in key.split('.')) {
      final index = int.tryParse(part);
      if (value is Map) {
        value = value[part];
      } else if (value is List && index != null && index < value.length) {
        value = value[index];
      } else {
        value = null;
      }
    }
    if (value is List) return value.join(', ');
    return value?.toString() ?? '';
  });
}

/// Shows [child] to signed-in users and [login] to everyone else.
class AuthGuard extends StatelessWidget {
  const AuthGuard({super.key, required this.child, this.login});

  final Widget child;
  final Widget? login;

  @override
  Widget build(BuildContext context) => Backend.isSignedIn ? child : (login ?? const SignInRequired());
}

class SignInRequired extends StatelessWidget {
  const SignInRequired({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text('Please sign in to see this page.', textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
