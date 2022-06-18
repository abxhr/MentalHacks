import 'package:flutter/material.dart';
import '../screens/result.dart';


class FormWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
              alignment: Alignment.center,
              height: 300,
              padding: const EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey , width: 2),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),
              child: Column(
                children: [ 
                  const SizedBox(
                    height: 100,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter your state of mind in words',
                    ),
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
                  )
                ]
              ),
          );
  }
}