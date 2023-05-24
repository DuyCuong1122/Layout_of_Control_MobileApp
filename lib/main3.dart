import 'package:flutter/material.dart';
import 'payment.dart';
import 'infoConsumer.dart';
import 'infoNhanVien.dart';
import 'point.dart';
import 'sale.dart';
import 'thoigianthue.dart';

class thirdPage extends StatefulWidget {
  String username = "";
  String sdt = "";
  thirdPage({required this.username, required this.sdt});
  @override
  _thirdPageState createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  double heightSizedbox1 = 4;
  Color colorAppbar = const Color.fromARGB(200, 255, 215, 185);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "SFS",
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: colorAppbar,
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text(
              'SFS',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: heightSizedbox1),
                  const Text(
                    "Thông tin đặt lịch",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: heightSizedbox1),
                  const infoStaff(),
                  SizedBox(height: heightSizedbox1),
                  thoigianThue(),
                  SizedBox(height: heightSizedbox1),
                  Consumer(username : widget.username,sdt: widget.sdt,),
                  SizedBox(height: heightSizedbox1),
                  salePromotion(),
                  SizedBox(height: heightSizedbox1),
                  point(),
                  SizedBox(height: heightSizedbox1),
                  payment(),
                ],
              ),
            ),
          ),
        ));
  }
}
/*
const Text(
                  "Thông tin đặt lịch",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: heightSizedbox1),
                infoStaff(),
*/
