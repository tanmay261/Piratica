import 'package:PiraticaApp/widgets/constants.dart';
import 'package:flutter/material.dart';

class TransactionReceipt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryLightColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Icon(
            Icons.share,
            color: Colors.black,
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(
            Icons.more_horiz,
            color: Colors.black,
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
        elevation: 0.0,
      ),
      backgroundColor: kPrimaryLightColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: TransactionReceiptContainer(
          profileImageUrl:
              'https://www.007.com/wp-content/uploads/2017/07/rgb_logo_650-1.jpg',
          bankImageUrl:
              'https://static.india.com/wp-content/uploads/2016/08/bank-of-baroda.jpg',
          contactDetail: '+91-987547',
          cost: '\$1000',
          remark: 'Spying Eren',
          status: 'Pending',
          date: '3 Nov 20',
          time: '7:11 PM',
          bankName: 'Bank Of Baroda',
          accountnumber: 'XXXXXXX6218',
          upiId: '07656457749589',
          to: 'To : Mr James Bond',
          from: 'From : Tanmay Kumar Agrawal',
          weId: '87dbs57784dn',
          toId: 'nameisbond@jamesbond',
          fromId: 'tanmayagrawal@okhdfcbank',
        ),
      )),
    );
  }
}

class TransactionReceiptContainer extends StatelessWidget {
  const TransactionReceiptContainer({
    Key key,
    this.profileImageUrl,
    this.bankImageUrl,
    this.contactDetail,
    this.cost,
    this.remark,
    this.status,
    this.date,
    this.time,
    this.bankName,
    this.accountnumber,
    this.upiId,
    this.to,
    this.from,
    this.weId,
    this.toId,
    this.fromId,
  }) : super(key: key);
  final String profileImageUrl;
  final String bankImageUrl;
  final String contactDetail;
  final String cost;
  final String remark;
  final String status;
  final String date;
  final String time;
  final String bankName;
  final String accountnumber;
  final String upiId;
  final String to;
  final String toId;
  final String fromId;
  final String from;
  final String weId;

  Icon setStatusIcon(status) {
    if (status == 'Completed' || status == 'completed')
      return Icon(
        Icons.check_circle,
        color: Color(0xFF22F100),
      );
    else if (status == 'Pending' || status == 'pending')
      return Icon(
        Icons.error,
        color: Color(0xFFFF9900),
      );
    else if (status == 'Failed' || status == 'failed')
      return Icon(
        Icons.cancel,
        color: Color(0xFFFF0000),
      );
    else
      return Icon(
        Icons.menu,
        size: 0,
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 35.0,
            backgroundImage: NetworkImage(profileImageUrl),
          ),
          Text(
            to,
            style: TextStyle(fontSize: 25.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            contactDetail,
            style: TextStyle(color: Color(0xFF6F6F6F), fontSize: 20.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            cost,
            style: TextStyle(fontSize: 30.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            width: 100.0,
            height: 30.0,
            child: Center(child: Text(remark)),
            decoration: BoxDecoration(
              color: Color(0xFFBBDEFB),
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            setStatusIcon(status),
            SizedBox(width: 10.0),
            Text(status),
            SizedBox(width: 10.0),
            Text(date),
            SizedBox(width: 5.0),
            Text(time),
          ]),
          SizedBox(
            height: 10.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0),
            height: 300.0,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(bankImageUrl),
                      ),
                      Column(
                        children: [
                          Text(bankName),
                          SizedBox(
                            height: 3.0,
                          ),
                          Text(accountnumber)
                        ],
                      )
                    ],
                  ),
                  Divider(
                    height: 3.0,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'UPI Transaction ID',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    upiId,
                    style: TextStyle(color: Color(0xFF646464), fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(to,
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.w500)),
                  SizedBox(height: 5.0),
                  Text(
                    toId,
                    style: TextStyle(color: Color(0xFF646464), fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(from,
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.w500)),
                  SizedBox(height: 5.0),
                  Text(
                    fromId,
                    style: TextStyle(color: Color(0xFF646464), fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('WE transaction ID',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.w500)),
                  SizedBox(height: 5.0),
                  Text(
                    weId,
                    style: TextStyle(color: Color(0xFF646464), fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
