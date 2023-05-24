import 'package:flutter/material.dart';

void main() {
  runApp(Do_Tuoi());
}

class Do_Tuoi extends StatefulWidget {
  @override
  _Do_TuoiState createState() => _Do_TuoiState();
}

class _Do_TuoiState extends State<Do_Tuoi> {
  int selectedButtonIndex = 0;

  void selectButton(int index) {
    setState(() {
      selectedButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () {
              selectButton(0);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
              primary: selectedButtonIndex == 0 ? Color.fromARGB(160, 255, 160, 122) : Colors.white70,
            ),
            child: Text('12 tháng - 6 tuổi', style: TextStyle(color: Colors.black),),
          ),
          ElevatedButton(
            onPressed: () {
              selectButton(1);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
              primary: selectedButtonIndex == 1 ? Color.fromARGB(160, 255, 160, 122) : Colors.white70,
            ),
            child: Text('7 tuổi - 11 tuổi', style: TextStyle(color: Colors.black),),
          ),
        ],
      ),
    );
  }
}
