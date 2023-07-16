import 'package:flutter/material.dart';
import 'package:flutter_coeez/constants/color.dart';
import 'package:flutter_coeez/constants/constant_question.dart';
import 'package:flutter_coeez/ui/question_box.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int showanswer = 0;
  String index = '';
  bool Finalanswer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightgreen,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: darkblue,
        title: Text(
          'کوییز کینگ',
          style: TextStyle(color: kerem, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                '${getquestionslist().length}سوال ${showanswer + 1} از',
                style: TextStyle(
                  fontSize: 15,
                  color: kerem,
                ),
              ),
              SizedBox(height: 10),
              QuestionBox(
                text: getquestionslist()[showanswer].questiontitle!,
                answer1: getquestionslist()[showanswer].answer![0],
                answer2: getquestionslist()[showanswer].answer![1],
                answer3: getquestionslist()[showanswer].answer![2],
                answer4: getquestionslist()[showanswer].answer![3],
                // tap: () {
                //   print('salam');
                //   if (showanswer == getquestionslist().length - 1) {
                //     Finalanswer = true;
                //   }
                //   setState(() {
                //     if (showanswer < getquestionslist().length - 1) {
                //       showanswer++;
                //     }
                //   });
                // },
                //shart haye ke bray raftan be soal baadi va button 
                //natayej sooalat bayad dar ontap estefade beshe
              ),
              SizedBox(height: 15),
              if (Finalanswer)
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(350, 70),
                    primary: darkblue,
                  ),
                  onPressed: () {},
                  child: Text(
                    'دیدن نتایج',
                    style: TextStyle(
                      fontSize: 25,
                      color: kerem,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

}
