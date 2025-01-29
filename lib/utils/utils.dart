import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  void ShowToastMsg(String toast_msg, Color toast_color) {
    Fluttertoast.showToast(
        msg: toast_msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: toast_color,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
