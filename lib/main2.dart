import 'package:flutter/material.dart';
import 'package:main_app/nextBt.dart';
import 'chonDoTuoi.dart';
import 'soLuongTre.dart';
import 'thoiLuong.dart';
import 'tgButton.dart';
import 'carouselSlider2.dart';
import 'ghiChu.dart';


class secondPage extends StatefulWidget {
  String username = "";
  String sdt = "";
  secondPage({required this.username, required this.sdt});

  @override
  _secondPageState createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  double fontSizeBold = 20;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "SFS",
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 255, 215, 185),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(200, 255, 215, 185),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("SFS"),
        ),
        body: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              //Chọn số lượng trẻ
              children: [
                const SizedBox(
                  width: 16,
                ),
                Text(
                  "Chọn số lượng trẻ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: fontSizeBold),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            So_Luong_Tre(),
            Row(
              //Chọn thời lượng
              children: [
                const SizedBox(
                  width: 16,
                ),
                Text(
                  "Chọn thời lượng",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: fontSizeBold),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Thoi_Luong(),
            const SizedBox(
              height: 4,
            ),
            Row(
              //Tùy chọn
              children: [
                const SizedBox(
                  width: 16,
                ),
                Text(
                  "Tùy chọn",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: fontSizeBold),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            switch_button(),
            crsSlider2(),
            const SizedBox(
              height: 4,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //Ghi chú cho nhân viên trông trẻ
              children: [
                Text(
                  "   Ghi chú cho nhân viên trông trẻ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: fontSizeBold),
                ),
                const Text(
                  "    Ghi chú chi tiết giúp nhân viên trông trẻ chuẩn bị tốt hơn",
                ),
              ],
            ),
            ghi_chu(),
            const SizedBox(
              height: 4,
            ),
            nextBt(username: widget.username,sdt: widget.sdt,)
          ],
        ),
        ),
      ),
    );
  }
}
