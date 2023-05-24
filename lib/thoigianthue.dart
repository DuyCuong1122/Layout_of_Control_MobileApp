import 'package:flutter/material.dart';

class thoigianThue extends StatelessWidget {
  const thoigianThue({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 96,
          child: Row(
            children: [
              Image.asset(
                'assets/images/1.jpg', // Đường dẫn đến ảnh
                width: 151,
                height: 80,
              ),
              SizedBox(width: 2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'Thời nhận bắt đầu',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Thời gian kết thúc',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
  }
}
