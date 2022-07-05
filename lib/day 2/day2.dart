// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DayTwo extends StatelessWidget {
  const DayTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  //  nav bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [Icon(Icons.chevron_left), Icon(Icons.more_vert)],
                  ),
                  SizedBox(height: 25),
                  // your Cards
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Your Cards",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'You have 3 Active Cards',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              // card
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, top: 25.0, right: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'images/card-chip.png',
                        height: 50,
                        width: 50,
                      ),
                      SizedBox(height: 15),
                      Text(
                        '2564 52565 8985 852',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tolosa Afrash',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Expire Date',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '14/2025',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            'images/MasterCard.png',
                            height: 110,
                            width: 110,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              // second sections
              Text(
                'Recent Transactions',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Dard(
                date: 'June 26',
                title: 'Paypal',
                LidIcon: Icon(
                  Icons.paypal,
                ),
              ),
              Dard(
                date: 'May 18',
                title: 'Apple',
                LidIcon: Icon(Icons.apple),
              ),
              Dard(
                  date: 'Nov 06',
                  title: 'Sound',
                  LidIcon: Icon(Icons.graphic_eq)),
            ],
          ),
        ),
      ),
    );
  }
}

class Dard extends StatelessWidget {
  Icon? LidIcon;
  String? date;
  String? title;

  Dard({@required this.LidIcon, this.date, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.0),
      margin: EdgeInsets.only(bottom: 9.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.black26,
      ),
      child: ListTile(
        title: Text(title!),
        subtitle: Text(date!),
        trailing: Text('-\$25.00'),
        leading: LidIcon,
      ),
    );
  }
}
