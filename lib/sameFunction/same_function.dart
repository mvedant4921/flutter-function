// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showSnackbar(BuildContext context, String text, {int sec = 2}) {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
    duration: Duration(seconds: sec),
  ));
}

showProgressSnack(BuildContext context) {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Please wait...'),
          SizedBox(width: 20, height: 20, child: CircularProgressIndicator())
        ],
      ),
      duration: const Duration(seconds: 30),
    ),
  );
}
