import 'package:flutter/material.dart';

import '../backend/page_actions.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> with PageActions {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(title: Text('Sign in'), backgroundColor: Color(0xFFFFFFFF)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 12,
            children: [
              TextField(controller: field('email'), decoration: InputDecoration(labelText: 'Email', hintText: 'you@example.com', border: const OutlineInputBorder())),
              TextField(controller: field('password'), decoration: InputDecoration(labelText: 'Password', hintText: '••••••••', border: const OutlineInputBorder())),
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/home'), style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0F7F64), foregroundColor: Color(0xFFFFFFFF), padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))), child: Text('Sign in'))),
              Text('Forgot password?', textAlign: TextAlign.center, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF5A5A5A))),
            ],
          ),
        ),
      ),
    );
  }
}
