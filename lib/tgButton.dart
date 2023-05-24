import 'package:flutter/material.dart';


class switch_button extends StatefulWidget {
  @override
  _switch_buttonState createState() => _switch_buttonState();
}

class _switch_buttonState extends State<switch_button> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                child: Text("   Bạn tự chọn người làm"),
              ),
              SizedBox(width: 16),
              Switch(
                value: _isSwitched,
                onChanged: (value) {
                  setState(() {
                    _isSwitched = value;
                  });
                },
              ),
            ],
          );
  }
}
