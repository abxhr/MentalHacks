import 'package:flutter/material.dart';
import '../widget/form.dart';
import '../widget/appbar.dart';

class MyHomePage extends StatelessWidget{
  const MyHomePage({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    

      return Scaffold(
        appBar: AppBar(
          title: AppBarWidget(),
        ),
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(  
                image: AssetImage('assets/LoginPage.jpg'),
                fit: BoxFit.cover
              )
            ),
            child: const Center (
              child: FormWidget()
            ),
          ),
        )
      );
  }
}