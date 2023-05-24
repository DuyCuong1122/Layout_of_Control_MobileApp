import 'package:flutter/material.dart';

class Thoi_Luong extends StatefulWidget {
  @override
  _Thoi_LuongState createState() => _Thoi_LuongState();
}

class _Thoi_LuongState extends State<Thoi_Luong> {
  String? dropValue1;
  String? dropValue2;
  String? dropValue3;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          // Theo giờ
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
          ),
          child: SizedBox(
            width: 132,
            height: 128,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Theo giờ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 104,
                  child: DropdownButton<String>(
                    hint: const Text("Chọn giờ"),
                    value: dropValue1,
                    onChanged: (String? value) {
                      setState(() {
                        dropValue1 = value!;
                      });
                    },
                    style: const TextStyle(
                      color: Colors.black38, // Màu chữ trong nút dropdown
                      fontSize: 16.0, // Cỡ chữ trong nút dropdown
                      fontWeight:
                          FontWeight.bold, // Độ đậm của chữ trong nút dropdown
                    ),

                    dropdownColor:
                        Colors.blue, // Màu nền của danh sách các mục dropdown
                    items: <String>[
                      '4 giờ',
                      '6 giờ',
                      '8 giờ',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                const Text('(100.000đ/giờ)'),
              ],
            ),
          ),
        ),
        Container(
          // Theo ngày
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
          child: SizedBox(
            width: 180,
            height: 128.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Theo ngày(6h-20h)',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 150,
                  child: DropdownButton<String>(
                    hint: const Text("Chọn ngày làm"),
                    value: dropValue2,
                    onChanged: (String? value) {
                      setState(() {
                        dropValue2 = value!;
                      });
                    },
                    style: const TextStyle(
                      color: Colors.black38, // Màu chữ trong nút dropdown
                      fontSize: 16.0, // Cỡ chữ trong nút dropdown
                      fontWeight:
                          FontWeight.bold, // Độ đậm của chữ trong nút dropdown
                    ),

                    dropdownColor:
                        Colors.blue, // Màu nền của danh sách các mục dropdown
                    items: <String>[
                      '1',
                      '2',
                      '3',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                const Text('(1.000.000đ/ngày)'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
