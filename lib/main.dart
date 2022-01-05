import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  //List questions = [
  //  'Approximately one quarter of human bones are in the feet.',
  //'You can lead a cow down stairs but not up stairs.',
  // 'A slug\'s blood is green.',

  // Question q1 = Question(
  //    q: 'Approximately one quarter of human bones are in the feet.', a: true);
  // Question q2 = Question(
  //    q: 'You can lead a cow down stairs but not up stairs.', a: false);
  // Question q3 = Question(q: 'A slug\'s blood is green.', a: true);
  List<Question> questionBank = [
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(q: 'A slug\'s blood is green.', a: true),
  ];

  List<bool> answers = [
    true,
    false,
    true,
  ];
  int questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  questionBank[questionNumber].questionText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: FlatButton(
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'True',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                onPressed: () {
                  bool corectAnswer = answers[questionNumber];
                  if (corectAnswer == true) {
                    print('Correct');
                  } else {
                    print('Wrong');
                  }

                  setState(() {
                    questionNumber++;
                  });
                  print(questionNumber);
                },
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: FlatButton(
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'False',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                onPressed: () {
                  bool corectAnswer = answers[questionNumber];
                  if (corectAnswer == false) {
                    print('Correct');
                  } else {
                    print('Wrong');
                  }
                  setState(() {
                    questionNumber++;
                  });

                  print(questionNumber);
                },
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          ),
        ]);
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
