import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToasterService {
  warningToast(title) {
    Fluttertoast.showToast(
        msg: title,
        toastLength: Toast.LENGTH_LONG,
        webShowClose: true,
        gravity: ToastGravity.NONE,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.yellow.withOpacity(0.3),
        textColor: Colors.black,
        fontSize: 16.0);
  }

  successToast(title) {
    Fluttertoast.showToast(
        msg: title,
        toastLength: Toast.LENGTH_LONG,
        webShowClose: true,
        gravity: ToastGravity.NONE,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.green.withOpacity(0.3),
        textColor: Colors.black,
        fontSize: 16.0);
  }

  infoToast(title) {
    Fluttertoast.showToast(
        msg: title,
        toastLength: Toast.LENGTH_LONG,
        webShowClose: true,
        gravity: ToastGravity.NONE,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.grey.withOpacity(0.3),
        textColor: Colors.black,
        fontSize: 16.0);
  }

  errorToast(title) {
    Fluttertoast.showToast(
        msg: title,
        toastLength: Toast.LENGTH_LONG,
        webShowClose: true,
        gravity: ToastGravity.NONE,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.red.withOpacity(0.3),
        textColor: Colors.black,
        fontSize: 16.0);
  }

  snakBar(context, title) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(title),
      dismissDirection: DismissDirection.endToStart,
    ));
  }
}
