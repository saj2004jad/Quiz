import 'package:flutter/material.dart';
import 'package:flutter_coeez/constants/color.dart';

class QuestionBox extends StatelessWidget {
  final String text;
  final String answer1;
  final String answer2;
  final String answer3;
  final String answer4;
  

  const QuestionBox({
    super.key,
    required this.text,
    required this.answer1,
    required this.answer2,
    required this.answer3,
    required this.answer4,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 230,
          decoration: BoxDecoration(
            color: darkblue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
          ),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: kerem,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: 75,
            decoration: BoxDecoration(
              color: darkblue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
            ),
            child: Center(
              child: TextButton(
                child: Text(
                  answer1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: kerem,
                  ),
                ),
                onPressed: () {
                  checkIndex(0);
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            height: 75,
            decoration: BoxDecoration(
              color: darkblue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
            ),
            child: Center(
              child: TextButton(
                child: Text(
                  answer2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: kerem,
                  ),
                ),
                onPressed: () {
                  checkIndex(1);
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          height: 75,
          width: 360,
          decoration: BoxDecoration(
            color: darkblue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
          ),
          child: Center(
            child: TextButton(
              child: Text(
                answer3,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: kerem,
                ),
              ),
              onPressed: () {
                checkIndex(2);
              },
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          height: 75,
          width: 360,
          decoration: BoxDecoration(
            color: darkblue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),
          child: Center(
            child: TextButton(
              child: Text(
                answer4,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: kerem,
                ),
              ),
              onPressed: () {
                checkIndex(3);
              },
            ),
          ),
        ),
      ],
    );
  }

  void checkIndex(int index) {
    print(index);
  }
}
