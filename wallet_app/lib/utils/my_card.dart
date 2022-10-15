import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard(
      {super.key,
      required this.balance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text(
              'Balance',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '\$' + balance.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //card number
                Text(
                  '**** ' + cardNumber.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                //card date
                Text(
                  expiryMonth.toString() + '/' + expiryYear.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}
