import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userId = TextEditingController();
  final username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Chat App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: userId,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "User Id",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: username,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "User Name",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () async {
                    await ZIMKit()
                        .connectUser(id: userId.text, name: username.text);
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage(),));
                  },
                  child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
