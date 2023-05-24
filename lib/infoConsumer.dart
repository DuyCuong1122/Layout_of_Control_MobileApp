import 'package:flutter/material.dart';

class Consumer extends StatefulWidget {
  String username = "";
  String sdt = "";
  Consumer({required this.username, required this.sdt});
  @override
  _ConsumerState createState() => _ConsumerState();
}

class _ConsumerState extends State<Consumer> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            "Thông tin khách hàng",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              const Text(
                'Số điện thoại:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(widget.sdt, style: const TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text(
                'Họ tên',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(widget.username, style: const TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
