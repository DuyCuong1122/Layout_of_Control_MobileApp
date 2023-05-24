import 'package:flutter/material.dart';
import 'main3.dart';

class nextBt extends StatelessWidget {
  String username = "";
  String sdt = "";
  nextBt({required this.username, required this.sdt});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Align(
        alignment: Alignment.centerRight,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => thirdPage(
                        username: username,
                        sdt: sdt,
                      )),
            );
          },
          child: const Text('Tiếp theo'),
        ),
      ),
    );
  }
}
