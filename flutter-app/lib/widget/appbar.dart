import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
            children:const[ 
              Icon(
                Icons.manage_accounts_outlined,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Mental Hacks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22
                ),
              ),

            ]
          );
  }
}