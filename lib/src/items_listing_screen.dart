import 'package:flutter/material.dart';
import 'package:razorpay_plugin/razorpay_plugin.dart';

class ItemsListingScreen extends StatefulWidget {
  @override
  _ItemsListingScreenState createState() => _ItemsListingScreenState();
}

class _ItemsListingScreenState extends State<ItemsListingScreen> {
  startPayment() async {
    Map<String, dynamic> options = new Map();
    options.putIfAbsent("name", () => "Razorpay T-Shirt");
    options.putIfAbsent(
        "image", () => "https://www.73lines.com/web/image/12427");
    options.putIfAbsent("description", () => "This is a real transaction");
    options.putIfAbsent("amount", () => "100");
    options.putIfAbsent("email", () => "test@testing.com");
    options.putIfAbsent("contact", () => "9988776655");
    //Must be a valid HTML color.
    options.putIfAbsent("theme", () => "#FF0000");
    //Notes -- OPTIONAL
    Map<String, String> notes = new Map();
    notes.putIfAbsent('key', () => "value");
    notes.putIfAbsent('randomInfo', () => "haha");
    options.putIfAbsent("notes", () => notes);
    options.putIfAbsent("api_key", () => "rzp_test_9MZBA94jNK5SeN");
    Map<dynamic, dynamic> paymentResponse = new Map();
    paymentResponse = await Razorpay.showPaymentForm(options);
    print("response $paymentResponse");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        RaisedButton(
          child: Text("Start Payment"),
          onPressed: startPayment,
        ),
      ],
    );
  }
}
