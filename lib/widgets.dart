import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

displayToast({required String msg}) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    // timeInSecForIosWeb: 1,
    backgroundColor: Colors.black,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

displaySnackBar({required String msg, required BuildContext context}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        msg,
      ),
      action: SnackBarAction(
        label: 'UNDO',
        onPressed: () {
          debugPrint('Reveresed Action');
        },
      ),
    ),
  );
}
