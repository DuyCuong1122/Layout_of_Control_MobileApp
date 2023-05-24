import 'package:flutter/material.dart';

class ghi_chu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Ghi chú',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        );
  }
}
