import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'login.dart';
import 'chat_screen.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diana',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF1C1C1E),
        inputDecorationTheme: const InputDecorationTheme(
          border: InputBorder.none,
        ),
      ),
      // 👇 Remove `home:` — use proper initialRoute flow
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/chat': (context) => const ChatScreen(),
      },
    );
  }
}
