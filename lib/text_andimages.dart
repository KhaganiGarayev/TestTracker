// import 'dart:html';

import 'package:flutter/material.dart';

class ImagesAndText extends StatelessWidget {
  const ImagesAndText(this.startQuiz,{super.key});
  final void Function()startQuiz;
 
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 200,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 70,
          ),
          child: Text(
            style: TextStyle( 
              fontSize: 20,
              color: Colors.white,
            ),
            "Learn Flutter the fun way",
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: () {
            startQuiz();
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            // padding: const EdgeInsets.only(top: 20),
          ),
          icon: const Icon(
            Icons.arrow_right_alt,
            color: Colors.red,
          ),
          label: const Text("Start Quiz"),
        ),
      ],
    );
  }
}
