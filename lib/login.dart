import 'package:diana/signup.dart';
import 'package:flutter/material.dart';
import 'chat_screen.dart'; // replace with actual path if different
import 'glowing_logo_loop.dart'; // ensure this file exists

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  width: 150,
                  height: 150,
                  child: GlowingLogoLoop(),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Log-in to Diana",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 30),

                // Email Field
                TextField(
                  controller: emailController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: const TextStyle(color: Colors.white54),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.blueAccent,
                    ),
                    filled: true,
                    fillColor: Colors.grey[900],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(color: Colors.white12),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(color: Colors.white12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(color: Colors.blueAccent),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Password Field
                TextField(
                  controller: passwordController,
                  obscureText: obscurePassword,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: const TextStyle(color: Colors.white54),
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.blueAccent,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() => obscurePassword = !obscurePassword);
                      },
                    ),
                    filled: true,
                    fillColor: Colors.grey[900],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(color: Colors.white12),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(color: Colors.white12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(color: Colors.blueAccent),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // Login Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      // 💙 You can add auth check here if needed
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const ChatScreen()),
                      );
                    },
                    icon: const Icon(Icons.login, color: Colors.white),
                    label: const Text("Login", style: TextStyle(fontSize: 16)),
                  ),
                ),

                const SizedBox(height: 16),

                TextButton(
                  onPressed: () {
                    // forget password logic
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.white38),
                  ),
                ),
                const SizedBox(height: 16),

                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const SignupPage()),
                      );
                  },
                  child: const Text(
                    "Don't have an Account? Create one!",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
