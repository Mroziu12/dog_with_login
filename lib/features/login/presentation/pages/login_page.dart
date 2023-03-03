import 'package:dog_with_login/core/widgets/custom_input_field.dart';
import 'package:dog_with_login/core/widgets/custom_submit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              //Logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 20),
              //Welcome text
              Text(
                "LOG IN",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3),
              ),
              const SizedBox(height: 50),
              //emailTextfield
              CustomInputField(
                  controller: usernameController,
                  hintText: "Username",
                  obscureText: false),

              const SizedBox(height: 20),
              //passTextfield
              CustomInputField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true),
              const SizedBox(height: 10),
              //forgot pass?
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              //login button
              CustomSubmitButton(onPressed: logIn(context), text: "Log In"),
              const SizedBox(height: 20),
              //not a member> Register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?"),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () => navigateToSignUp(context),
                    child: Text(
                      "Register now",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Future logIn(BuildContext context) async {
  //TODO dodac event do Login bloc
}

void navigateToSignUp(BuildContext context) {
  context.go('/signup');
}
