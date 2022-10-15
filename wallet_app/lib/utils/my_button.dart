import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const MyButton({
    super.key,
    required this.iconImagePath,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 20,
                spreadRadius: 5,
              )
            ],
          ),
          child: Center(child: Image.asset(iconImagePath)),
        ),
        SizedBox(height: 10),
        Text(
          buttonText,
          style: TextStyle(
              color: Colors.grey[700],
              fontSize: 20,
              fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
