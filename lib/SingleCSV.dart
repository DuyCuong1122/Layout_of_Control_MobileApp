import 'package:flutter/material.dart';
import 'toplayer.dart';
import 'bNavBar.dart';
import 'carouselSlider.dart';
import 'buttonGiupViec.dart';
import 'buttonTrongTre.dart';

void main() => runApp(singleCSV());

class singleCSV extends StatelessWidget {
  double heightSizedbox = 4;
  Color colorAppbar = const Color.fromARGB(200, 255, 215, 185);
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final username = arguments['username'];
    final sdt = arguments['sdt'];
    return MaterialApp(
      title: "SFS Application",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: colorAppbar,
          centerTitle: true,
          title: const Text(
            'SFS',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                topLayer(
                  username: username,
                ),
                SizedBox(height: heightSizedbox),
                SizedBox(height: heightSizedbox),
                crsSlider(),
                SizedBox(height: heightSizedbox),
                const Text(
                  "Dịch vụ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: heightSizedbox),
                const Text("Dịch vụ giúp việc",
                    style: TextStyle(
                        fontSize: 20, decoration: TextDecoration.underline)),
                SizedBox(height: heightSizedbox),
                SizedBox(height: heightSizedbox),
                btGiupViec(),
                SizedBox(height: heightSizedbox),
                SizedBox(height: heightSizedbox),
                const Text("Dịch vụ trông trẻ tại nhà",
                    style: TextStyle(
                        fontSize: 20, decoration: TextDecoration.underline)),
                SizedBox(height: heightSizedbox),
                SizedBox(height: heightSizedbox),
                btTrongTre(username: username,sdt: sdt)
              ],
            ),
          ),
        ),
        bottomNavigationBar: bNavBar(),
      ),
    );
  }
}
