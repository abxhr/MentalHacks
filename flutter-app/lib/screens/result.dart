import 'package:flutter/material.dart';


class ResultScreen extends StatefulWidget {
  static const routeName = '/results';
  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const[
            Icon(
              Icons.restore_outlined , 
              size:30 , 
              color: Colors.white
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Your results',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22
                ),
            )
          ],
        ),
      ),
      body: const Center(
        child: Text('Results are shown here'),
      ),
    );
  }
}