import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.choosenAnswers,
    required this.endQuiz,
  });
  final void Function()endQuiz;

  List<Map<String, Object>> getSummartData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        "questions_index": i,
        "questions": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answer": choosenAnswers[i],
      });
    }
    return summary;
  }

  final List<String> choosenAnswers;
  @override
  Widget build(context) {
    final summaryData = getSummartData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "You answered $numTotalQuestions out of $numCorrectQuestions questions correctly!"),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              icon: const Icon(
                Icons.restart_alt_rounded,
              ),
              onPressed: endQuiz,
              label: const Text("Restart Quiz"),
            )
          ],
        ),
      ),
    );
  }
}
