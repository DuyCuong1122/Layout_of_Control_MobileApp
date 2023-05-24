import 'package:flutter/material.dart';

class infoStaff extends StatelessWidget {
  const infoStaff({super.key});

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
                    'Thông tin giáo viên',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Họ tên',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Quê quán',
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
