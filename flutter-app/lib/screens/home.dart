import 'package:flutter/material.dart';
import '../widget/form.dart';
import '../widget/appbar.dart';

class MyHomePage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: AppBarWidget()
        ),
        body: Center (
          child: FormWidget()
        )
      );
  }
}