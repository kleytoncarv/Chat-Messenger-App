import 'package:chat_messenger_app/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//text controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // logo
        Icon(
          Icons.message,
          size: 80,
          color: Colors.grey[800],
        ),
        //welcome back message
        const Text(
          "Welcome back you\'ve been missed!",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        // email text
        MyTextField(
            controller: emailController,
            hintText: 'Email',
            obscureText: false)
      ],
    ));
  }
}
