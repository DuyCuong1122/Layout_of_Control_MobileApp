import 'package:flutter/material.dart';

class payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Thông báo'),
                  content: Text('Thanh toán thành công, cảm ơn quý khách'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Đóng'),
                    ),
                  ],
                );
              },
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 255, 127, 80), // Màu nền của button
            onPrimary: Colors.white, // Màu chữ trên button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // Bo góc của button
            ),
            padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 24), // Khoảng cách giữa nội dung và viền của button
            elevation: 4, // Độ nổi của button
          ),
          child: Text(
            'Thanh toán',
            style: TextStyle(fontSize: 25), // Kiểu chữ của nút
          ),
        ))
      ],
    );
  }
}
