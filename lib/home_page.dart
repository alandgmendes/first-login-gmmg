import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modo noturno:"),
        actions: [CustomSwitch()],
      ),
      body: Center(
        child: Column(          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Bem vindo ao aplicativo da minha fazenda!",
             textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 35)
              ),
            ),
            Center(
              child: Text(
                "Assim como minha fazenda, ele é de mentirinha, mas é meu!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 35),
              ),
            ),
            Center(
              child: Text(
                "Clicka no trator pra aumentar o contador:\nContador: $counter",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 35),
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.agriculture),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
