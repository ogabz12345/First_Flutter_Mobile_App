import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        // if  onPressed:answerQuestion(), error bcos you're saying run this function immediately which is wrong
        // doing this (onPressed: answerQuestion), it means only call this function when the user presses the button.
        //first Method of calling a function onClick
        onPressed: selectHandler,
      ),
    );
  }
}
