import 'package:flutter/material.dart';
import 'package:visitorapp/screens/adminloginmenu.dart';

class AAdd extends StatefulWidget {
  AAdd({super.key});

  @override
  State<AAdd> createState() => _AddState();
}

class _AddState extends State<AAdd> {

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade100,
          title: Text("                      Admin Login"),
        ),
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
                    controller: _usernameController,
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
                    controller: _passwordController,
                    obscureText: true,
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
                      backgroundColor: Colors.red.shade100,
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {

                      String username = _usernameController.text;
                      String password = _passwordController.text;


                      if (username == 'admin' && password == '12345') {
                        // Navigate to the admin menu system
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AMenuSystem(),
                          ),
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
