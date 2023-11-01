import 'package:flutter/material.dart';
import 'second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz-02"),
        ),
        body: PasswordResetScreen(),
      ),
    );
  }
}

class PasswordResetScreen extends StatelessWidget {
  const PasswordResetScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.lock,
            size: 40.0,
            color: Color.fromARGB(255, 184, 228, 24),
          ),
          const SizedBox(width: 16.0), // Change to width
          const Text(
            "Forgot Password?",
            style: TextStyle(
              fontSize: 24.0,
              fontFamily: "YourFontFamily",
            ),
          ),
          const SizedBox(width: 16.0), // Change to width
          const Text(
            "Enter your email that you used to register your account, so we can send you a link to reset your password",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          const SizedBox(width: 16.0), // Change to width
          const TextField(
            decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(width: 10.0), // Change to width
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondPage()),
              );
            },
            child: const Text("Send Link"),
          ),
          const Text(
            "Forgot your email? Try phone number",
            style: TextStyle(
              fontSize: 12.0,
              fontFamily: "YourFontFamily",
            ),
          ),
        ],
      ),
    );
  }
}