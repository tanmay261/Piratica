import 'package:PiraticaApp/screens/transaction_receipt.dart';
import 'package:PiraticaApp/widgets/constants.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  static String id = 'TransactionHistory';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kPrimaryLightColor,
        leading: Container(
          margin: EdgeInsets.only(left: 30.0),
          child: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        centerTitle: false,
        title: Text(
          'Transaction history',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TransactionHistoryCard(
              credit: true,
              imageUrl:
                  'https://footwearnews.com/wp-content/uploads/2020/11/miley-cyrus-shorts-tights.jpg?w=700&h=437&crop=1',
              name: 'Miley Cyrus',
              cost: '\$10',
              date: '23 Nov 20',
              status: 'Completed',
            ),
            TransactionHistoryCard(
              credit: false,
              imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/JohnDHopper.jpg/220px-JohnDHopper.jpg',
              name: 'John Hopper',
              date: '23 Nov 20',
              status: 'Failed',
              cost: '\$30',
            ),
            TransactionHistoryCard(
              credit: true,
              imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/JohnDHopper.jpg/220px-JohnDHopper.jpg',
              name: 'John Hopper',
              date: '23 Nov 20',
              status: 'Pending',
              cost: '\$120.00',
            ),
            TransactionHistoryCard(
              credit: false,
              imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/JohnDHopper.jpg/220px-JohnDHopper.jpg',
              name: 'John Hopper',
              date: '23 Nov 20',
              status: 'pending',
              cost: '\$190.23',
            ),
            TransactionHistoryCard(
              credit: true,
              imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/JohnDHopper.jpg/220px-JohnDHopper.jpg',
              name: 'John Hopper',
              date: '23 Nov 20',
              status: 'completed',
              cost: '\$987.9',
            ),
            TransactionHistoryCard(
              credit: false,
              imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/JohnDHopper.jpg/220px-JohnDHopper.jpg',
              name: 'John Hopper',
              date: '23 Nov 20',
              status: 'Failed',
              cost: '\$100',
            ),
            TransactionHistoryCard(
              credit: false,
              imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/JohnDHopper.jpg/220px-JohnDHopper.jpg',
              name: 'John Hopper',
              date: '23 Nov 20',
              status: 'Pending',
              cost: '\$40',
            ),
            TransactionHistoryCard(
              credit: true,
              imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/JohnDHopper.jpg/220px-JohnDHopper.jpg',
              name: 'John Hopper',
              date: '23 Nov 20',
              status: 'Completed',
              cost: '\$30.69',
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionHistoryCard extends StatelessWidget {
  const TransactionHistoryCard({
    Key key,
    this.cost,
    this.name,
    this.imageUrl,
    this.credit,
    this.date,
    this.status,
  }) : super(key: key);
  final String cost;
  final bool credit;
  final String name;
  final String date;
  final String imageUrl;
  final String status;
  Color setStatusColor(status) {
    if (status == 'Completed' || status == 'completed')
      return Color(0xFF10CE00);
    else if (status == 'Pending' || status == 'pending')
      return Color(0xFFFF9900);
    else if (status == 'Failed' || status == 'failed')
      return Color(0xFFFF0000);
    else
      return (Colors.black);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TransactionReceipt()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        height: 70.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 10.0,
                  spreadRadius: 1.0),
            ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                      radius: 20.0,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              date,
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '.',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              status,
                              style: TextStyle(color: setStatusColor(status)),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                credit
                    ? Text(
                        '+' + cost,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: credit ? Color(0xFF10CE00) : Color(0xFFFF0000),
                        ),
                      )
                    : Text(
                        '-' + cost,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: credit ? Color(0xFF10CE00) : Color(0xFFFF0000),
                        ),
                      )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
