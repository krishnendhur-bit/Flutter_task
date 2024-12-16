import 'package:flutter/material.dart';
import 'package:visitorapp/screens/securityloginmenu.dart';

class SAdd extends StatefulWidget {
  SAdd({super.key});

  @override
  State<SAdd> createState() => _AddState();
}

class _AddState extends State<SAdd> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.shade100,
          title: Text("                   Security Login"),
        ),
        backgroundColor: Colors.white,
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      hintText: "Username",
                      prefixIcon: Icon(Icons.account_box_outlined),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    controller: passwordController,
                     decoration: InputDecoration(
                      hintText: "Password",
                       prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange.shade100,
                      foregroundColor: Colors.black,
                      shape: OvalBorder(

                      )
                    ),
                    onPressed: () {
                      String username = usernameController.text;
                      String password = passwordController.text;

                      if (username == 'sbce' && password == 'sbce123') {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SMenuSystem()),
                        );
                      } else {

                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Invalid Credentials"),
                            content: Text(
                                "The username or password you entered is incorrect."),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("OK"),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    child: Text("LOGIN"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
