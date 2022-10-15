import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/pages/colors.dart';
import 'package:wallet_app/utils/my_button.dart';
import 'package:wallet_app/utils/my_card.dart';
import 'package:wallet_app/utils/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // pagecontroller

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.bgColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 237, 114, 155),
        child: Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 32,
                color: Colors.pink[200],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 32,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            children: [
              // appbar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'My',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' Cards',
                          style: TextStyle(fontSize: 28),
                        ),
                      ],
                    ),

                    // plus botton
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xFFC7C5C5), shape: BoxShape.circle),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),

              // cards
              Container(
                height: 180,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      balance: 5250.20,
                      cardNumber: 5445,
                      expiryMonth: 10,
                      expiryYear: 29,
                      color: Colors.deepPurple[300],
                    ),
                    MyCard(
                      balance: 4562,
                      cardNumber: 5445,
                      expiryMonth: 08,
                      expiryYear: 32,
                      color: Colors.grey,
                    ),
                    MyCard(
                      balance: 2346.48,
                      cardNumber: 2564,
                      expiryMonth: 06,
                      expiryYear: 28,
                      color: Colors.deepOrange[500],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect:
                    ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
              ),
              SizedBox(height: 25),

              // 3 buttons

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                        iconImagePath: 'lib/icons/send-money.png',
                        buttonText: 'Send'),
                    MyButton(
                        iconImagePath: 'lib/icons/credit-card.png',
                        buttonText: 'Pay'),
                    MyButton(
                        iconImagePath: 'lib/icons/bill.png',
                        buttonText: 'Bills'),
                  ],
                ),
              ),
              SizedBox(height: 25),

              // column stats + transactions

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    MyListTile(
                        iconImagePath: 'lib/icons/analytics.png',
                        tileName: 'Statistic',
                        tileSubname: 'Payment and Income'),
                    MyListTile(
                        iconImagePath: 'lib/icons/money-transfer.png',
                        tileName: 'Transactions',
                        tileSubname: 'Transactions History'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      // bottom navigation bar
    );
  }
}
