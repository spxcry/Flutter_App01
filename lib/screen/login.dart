  import 'package:flutter/material.dart';

  class Login extends StatefulWidget {
    const Login({super.key});

    @override
    State<Login> createState() => LoginState();
  }

  class LoginState extends State<Login> {
    final _formLogin = GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Sign in to Application'),
        ),
        body: Column(
          children: [
            Form(
                key: _formLogin,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Username or email address',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person),
                            prefixIconColor: Color.fromARGB(255, 9, 0, 241)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Username';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock),
                            prefixIconColor: Color.fromARGB(255, 2, 55, 250)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Plassword';
                          }
                          return null;
                        },
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              onPressed: () {
                                _formLogin.currentState!.validate();
                              },child: Text('Sing in',)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              onPressed: () {
                                _formLogin.currentState!.validate();
                              }, child: Text('Cancel',)),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Text('Register a User',)),
                    ),
                  ],
                ))
          ],
        ),
      );
    }
  }