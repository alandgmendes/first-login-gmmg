import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';
import 'package:hello_world/login_error.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                      textDirection: TextDirection.rtl,
                      children: [
                        Container(
                            width: 280,
                            height: 280,
                            child: Image.network('https://i.ibb.co/mGzRdfg/logo.png')
                        ),
                        TextField(
                          onChanged: (text){
                            email = text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(

                              labelText: "email",
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          onChanged: (text){
                            password = text;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            if (email == 'exemplo@gmail.com' &&
                                password == '123123123') {
                                  Navigator.of(context).pushReplacementNamed('/home');
                            } else {
                              Navigator.of(context).pushReplacementNamed('/error');
                            }
                          },
                          child: Text("Login"),
                        ),
                      ],


                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
