import 'package:dog_with_login/core/widgets/custom_input_field.dart';
import 'package:dog_with_login/core/widgets/custom_submit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

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
                "REGISTER",
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

              const SizedBox(height: 40),
              //login button
              CustomSubmitButton(onPressed: signUp(context), text: "Sign Up"),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () => navigateToLogIn(context),
                    child: Text(
                      "Log In",
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

Future signUp(BuildContext context) async {
  //TODO dodac event do Login bloc
}
void navigateToLogIn(BuildContext context) {
  context.go('/login');
}
