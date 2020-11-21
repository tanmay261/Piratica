// import 'package:flutter/material.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class Payments extends StatefulWidget {
//   @override
//   _PaymentsState createState() => _PaymentsState();
// }

// class _PaymentsState extends State<Payments> {
//   Razorpay _razorpay;
//   int amount = 0;
//   @override
//   void initState() {
//     super.initState();
//     _razorpay = Razorpay();
//     _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);

//     _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
//     _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _razorpay.clear();
//   }

//   void openCheckout() async {
//     var options = {
//       'key': 'rzp_test_YyzxUdx2vQDn0m',
//       'amount': amount * 100,
//       'name': 'Piratica',
//       'description': 'Test Payment',
//       'prefill': {'contact': '', 'email': ''},
//       'external': {
//         'wallets': ['paytm']
//       }
//     };

//     try {
//       _razorpay.open(options);
//     } catch (e) {
//       debugPrint(e);
//     }
//   }

//   void _handlePaymentSuccess(PaymentSuccessResponse response) {
//     Fluttertoast.showToast(msg: 'SUCCESS' + response.paymentId);
//   }

//   void _handlePaymentError(PaymentFailureResponse response) {
//     Fluttertoast.showToast(
//         msg: 'FAILURE' + response.code.toString() + " - " + response.message);
//   }

//   void _handleExternalWallet(ExternalWalletResponse response) {
//     Fluttertoast.showToast(msg: 'EXTERNAL WALLET' + response.walletName);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Payments")),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           LimitedBox(
//             child: TextField(
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 hintText: 'Enter any amount',
//               ),
//               onChanged: (value) {
//                 setState(() {
//                   amount = num.parse(value);
//                 });
//               },
//             ),
//             maxWidth: 150.0,
//           ),
//           SizedBox(height: 20.0),
//           RaisedButton(
//               color: Colors.orange,
//               focusColor: Colors.purpleAccent,
//               hoverColor: Colors.blueAccent,
//               onPressed: () {
//                 openCheckout();
//               },
//               child: Text('Make Payment',
//                   style: TextStyle(
//                     fontSize: 22.0,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   )))
//         ],
//       ),
//     );
//   }
// }
