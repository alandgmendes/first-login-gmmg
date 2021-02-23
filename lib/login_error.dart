import 'package:flutter/material.dart';

class LoginError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child:
            Text("Erro de login!")
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Dados de login incorretos!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 35)),
            ),
            Center(
              child: Icon(
                Icons.warning,
                color: Colors.red,
                size: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
