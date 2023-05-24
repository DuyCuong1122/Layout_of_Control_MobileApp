import 'package:flutter/material.dart';
import 'chonDoTuoi.dart';

void main() {
  runApp(const So_Luong_Tre());
}

class So_Luong_Tre extends StatefulWidget {
  const So_Luong_Tre({Key? key}) : super(key: key);

  @override
  _So_Luong_TreState createState() => _So_Luong_TreState();
}

class _So_Luong_TreState extends State<So_Luong_Tre> {
  bool showAdditionalButtons = false;
  int selectedButtonIndex = 0;
  double fontSizeBold = 20;
  void toggleAdditionalButtons() {
    setState(() {
      showAdditionalButtons = !showAdditionalButtons;
    });
  }

  void selectButton(int index) {
    setState(() {
      selectedButtonIndex = index;
      showAdditionalButtons = !showAdditionalButtons;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              // button 1 trẻ
              onPressed: () {
                selectButton(0);
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                primary: selectedButtonIndex == 0 ? Color.fromARGB(160, 255, 160, 122) : Colors.white70,
              ),
              child: const Text('1 trẻ',style: TextStyle(color: Colors.black,),),
            ),
            ElevatedButton(
              //button 2 trẻ
              onPressed: () {
                selectButton(1);
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                primary: selectedButtonIndex == 1 ? Color.fromARGB(160, 255, 160, 122) : Colors.white70,
              ),
              child: const Text('2 trẻ',style: TextStyle(color: Colors.black),),
            ),
            const Card(
              color: Color.fromARGB(255,255,250,205),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text('Giảm 30% đối với 2 trẻ'),
              ),
            ),
          ],
        ),
        Row(    //Chọn độ tuổi của trẻ
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 16,
            ),
            Text(
              "Chọn độ tuổi của trẻ",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: fontSizeBold),
              textAlign: TextAlign.start,
            ),
          ],
        ),
        Text("Độ tuổi trẻ 1"),
        Do_Tuoi(),
        if (showAdditionalButtons) 
          Column(
            children: [
              SizedBox(height: 4,),
              Text("Độ tuổi trẻ 2"),
              SizedBox(
              width: 16,
            ),
              Do_Tuoi()
            ],
          )
      ],
    ));
  }
}
