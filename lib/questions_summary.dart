import 'package:flutter/material.dart';
// import 'package:second_app/data/questions.dart';
// suallarin widgetsii
class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: summaryData.map((data) {
            return Row(children: [
              Text(((data["questions_index"] as int) + 1).toString()),
              Expanded(
                child: Column(
                  children: [
                    Text(data['questions'] as String,
                    
                    style:const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      
              
                      
                    ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(data["user_answer"] as String),
                    Text(data["correct_answer"] as String),
                  ],
                ),
              ),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
