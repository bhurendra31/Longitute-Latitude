import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class ApiExample extends StatefulWidget {
  const ApiExample({super.key});

  @override
  State<ApiExample> createState() => _ApiExampleState();
}

class _ApiExampleState extends State<ApiExample> {
  String result ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
              onPressed: () {
              setState(() {}); 
              getdata().then((value) {
                result = value.body.toString();
                });
            }, child: Text("Get Data For Location")),
            const Spacer(),
            Text(result),
            const Spacer(),
          ],
        ),
      ),
    );
  }
