import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SViewall extends StatefulWidget {
  const SViewall({super.key});

  @override
  State<SViewall> createState() => _ViewallState();
}

class _ViewallState extends State<SViewall> {
  List<Map<String, dynamic>> students = [];

  Future<void> fetchStudentData() async {
    final ApiUrl = Uri.parse("https://log-app-demo-api.onrender.com/getvistors");
    try {
      final response = await http.get(ApiUrl);
      if (response.statusCode == 200) {
        List data = json.decode(response.body);
        setState(() {
          students = List<Map<String, dynamic>>.from(data);
        });
      } else {
        throw Exception("Failed to fetch API data");
      }
    } catch (exception) {
      print(exception);
    }
  }

  @override
  void initState() {
    super.initState();
    fetchStudentData();
  }

  @override
  Widget build(BuildContext context) {
    return students.isEmpty
        ? Center(child: CircularProgressIndicator())
        : ListView.builder(
      itemCount: students.length,
      itemBuilder: (context, index) {
        final student = students[index];
        return Card(
          elevation: 10,
          child: ListTile(
            title: Text(student["firstname"] ?? "Unknown"), // Handle null
            subtitle: Text(
              "${student["lastname"] ?? "Unknown"}\n"
                  "${student["purpose"] ?? "No Purpose"}\n"
                  "${student["whomToMeet"] ?? "Not Specified"}",
            ),
          ),
        );
      },
    );
  }
}
