import 'package:flutter/material.dart';
import 'package:visitorapp/screens/adminlogin.dart';
import 'package:visitorapp/screens/securitylogin.dart';

class Operation extends StatelessWidget {
  const Operation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: Text("                Visitor App SBCE"),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage("https://www.pngall.com/wp-content/uploads/8/Visitor-Card-PNG-Free-Download.png"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade700,
                    foregroundColor: Colors.black,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    )
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SAdd()),
                  );
                },
                child: Text("Security Login"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade400,
                    foregroundColor: Colors.black,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(80)
                    )

                ),
                
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AAdd()),
                  );
                },
                child: Text("Admin Login"),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
