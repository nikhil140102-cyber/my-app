import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7F9),
      appBar: AppBar(title: Text('Home'), backgroundColor: Color(0xFFF6F7F9)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 12,
            children: [
              Text('Hello again', textAlign: TextAlign.left, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xFF1B1B1B))),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(16), boxShadow: const [BoxShadow(color: Color(0x14000000), blurRadius: 4, offset: Offset(0, 1))]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: 8,
                  children: [
                    Text('Your dashboard', textAlign: TextAlign.left, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xFF1B1B1B))),
                    Text('Add widgets here.', textAlign: TextAlign.left, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF5A5A5A))),
                    Text('Heading', textAlign: TextAlign.left, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xFF1B1B1B))),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(16), boxShadow: const [BoxShadow(color: Color(0x14000000), blurRadius: 4, offset: Offset(0, 1))]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        spacing: 8,
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(16), boxShadow: const [BoxShadow(color: Color(0x14000000), blurRadius: 4, offset: Offset(0, 1))]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              spacing: 8,
                              children: [

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
