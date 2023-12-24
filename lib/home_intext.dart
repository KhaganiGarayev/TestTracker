import 'package:flutter/material.dart';
import 'package:second_app/text_andimages.dart';


class HomePage extends StatelessWidget{
     const HomePage (this.startQuiz, {super.key});
     final Function() startQuiz;
     @override
     Widget build(context){
      return Container(
          decoration:const BoxDecoration(
           color: Color.fromARGB(255, 78, 0, 146)
          ) ,
        child: Center(
          child:ImagesAndText(startQuiz),
          
        ),
        
      );
     }


}