import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'dart:async';
import 'dart:io';
import 'package:connectivity/connectivity.dart';
import 'package:data_connection_checker/data_connection_checker.dart';

class MainController extends ControllerMVC {
  MainController() {
    _getData();
  }
  Future _getData() async {
    bool conn = await isInternet();
    if (conn) {
      print("hi");
    } else {
      showDialog(builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "No Internet Connection..",
            style: Theme.of(context).textTheme.headline4,
          ),
          content: Text(
            "Please Tern On Your Internet.",
            style: Theme.of(context).textTheme.headline5,
          ),
          actions: [
            InkWell(
              onTap: () {
                exit(0);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Text("Ok"),
              ),
            )
          ],
        );
      });
    }
  }

  Future<bool> isInternet() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      // I am connected to a mobile network, make sure there is actually a net connection.
      if (await DataConnectionChecker().hasConnection) {
        // Mobile data detected & internet connection confirmed.
        return true;
      } else {
        // Mobile data detected but no internet connection found.
        return false;
      }
    } else if (connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a WIFI network, make sure there is actually a net connection.
      if (await DataConnectionChecker().hasConnection) {
        // Wifi detected & internet connection confirmed.
        return true;
      } else {
        // Wifi detected but no internet connection found.
        return false;
      }
    } else {
      // Neither mobile data or WIFI detected, not internet connection found.
      return false;
    }
  }
}
