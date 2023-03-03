import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RouterErrorPage extends StatelessWidget {
  const RouterErrorPage(Exception? error, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Router error occured"),
              Icon(
                Icons.error,
                size: 100,
              ),
              //Text(error.toString())
            ],
          ),
        ),
      ),
    );
  }
}
