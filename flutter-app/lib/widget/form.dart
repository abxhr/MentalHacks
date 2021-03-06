import 'package:flutter/material.dart';
import '../screens/result.dart';


class FormWidget extends StatelessWidget {
  const FormWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: Column(
        children: [ 
          const Spacer(),
          const SizedBox(
            height: 100,
          ),
          const TextField(
            style: TextStyle(
              fontSize: 22
            ),
            decoration: InputDecoration(
              labelText: 'Enter your state of mind in words',
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                fontSize: 22
              ),
            ),
            maxLength: 1000,
            keyboardType: TextInputType.multiline,
            minLines: 1,
            maxLines: 5,
          ),
          const SizedBox(
            height: 60,
          ),
          ElevatedButton(
            child: const Text(
              'Analyze my results',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18
              ),
            ),
            onPressed: (){
              Navigator.of(context).pushNamed(ResultScreen.routeName);
            }
          ),
          const Spacer(),
        ]
      ),
    );
  }
}