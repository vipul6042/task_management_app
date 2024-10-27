import 'package:flutter/cupertino.dart';

class ButtonWidget extends StatelessWidget {
  final Color bgColor;
  final String text;
  final Color textColor;
  const ButtonWidget({super.key,
    required this.text,
    required this.textColor,
    required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height/14,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(text,style:TextStyle(fontSize: 20,color: textColor)),
    );
  }
}
