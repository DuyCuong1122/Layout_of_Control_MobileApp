import 'package:flutter/material.dart';

class point extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
            children: [
              const Text(
                'Điểm',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Đổi điểm",
                          style: TextStyle(fontSize: 16),
                        ))
                  ],
                ),
              ),
            ],
          ),
      );
  }
}
