import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 12,
            children: [
              SizedBox(height: 60),
              ClipRRect(borderRadius: BorderRadius.circular(24), child: Image.network('https://cdn.britannica.com/98/235798-050-3C3BA15D/Hamburger-and-french-fries-paper-box.jpg', height: 220, width: double.infinity, fit: BoxFit.cover, semanticLabel: 'Welcome illustration', errorBuilder: (context, error, stack) => Container(height: 220, color: const Color(0xFFDCE6DF), alignment: Alignment.center, child: const Icon(Icons.broken_image_outlined)))),
              Text('Welcome to My app', textAlign: TextAlign.center, style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800, color: Color(0xFF1B1B1B))),
              Text('Everything you need, in one place.', textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF5A5A5A))),
              SizedBox(height: 12),
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/signin'), style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0F7F64), foregroundColor: Color(0xFFFFFFFF), padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))), child: Text('Get started'))),
            ],
          ),
        ),
      ),
    );
  }
}
