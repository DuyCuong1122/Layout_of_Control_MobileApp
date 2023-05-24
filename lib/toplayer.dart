import 'package:flutter/material.dart';

List<String> list = <String>[
  "Quận Hoàn Kiếm",
  "Quận Đống Đa",
  "Quận Ba Đình",
  "Quận Hai Bà Trưng",
  "Quận Hoàng Mai",
  "Quận Thanh Xuân",
  "Quận Long Biên",
  "Quận Nam Từ Liêm",
  "Quận Bắc Từ Liêm",
  "Quận Tây Hồ",
  "Quận Cầu Giấy",
  "Quận Hà Đông"
];

class topLayer extends StatefulWidget {
  final String username;
  topLayer({required this.username});
  @override
  State<topLayer> createState() => _topLayerState();
}

class _topLayerState extends State<topLayer> {
  double heightStack1 = 148;
  double heightctn = 132;
  final double fontSizeStack1 = 20;
  String? dropdownValue;
  
  @override
  Widget build(BuildContext context) {
    double screenWidthDivided7 = MediaQuery.of(context).size.width / 7;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              // top
              width: double.infinity,
              height: heightctn,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 255, 127, 80),
                    Color.fromARGB(255, 255, 215, 185)
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
            const SizedBox(height: 2.0),
            Container(
              //bot
              width: double.infinity,
              height: heightctn,
              color: const Color.fromARGB(160, 255, 160, 122),
            ),
          ],
        ),
        Positioned(
          // main stack
          top: 96.0,
          left: 16,
          child: Container(
            width: screenWidthDivided7 * 6,
            height: heightStack1,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(children: [
              Container(
                  height: heightStack1 / 2,
                  width: screenWidthDivided7 * 6,
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.grey)),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Khám phá và trải nghiệm các dịch vụ',
                      style: TextStyle(
                          fontSize: fontSizeStack1,
                          fontStyle: FontStyle.italic,
                          color: const Color.fromARGB(255, 255, 127, 80)),
                    ),
                  )),
              SizedBox(
                height: heightStack1 / 2,
                child: Row(children: [
                  SizedBox(
                    width: screenWidthDivided7 * 3,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.attach_money,
                          size: fontSizeStack1,
                          color: Colors.yellow,
                        ),
                        Text(
                          '0 Đ',
                          style: TextStyle(fontSize: fontSizeStack1),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidthDivided7 * 3,
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                        border: Border(
                            left: BorderSide(color: Colors.grey, width: 1.0))),
                    child: Row(children: [
                      Icon(
                        Icons.star,
                        size: fontSizeStack1,
                        color: Colors.yellow,
                      ),
                      Text(
                        '0 bPoints',
                        style: TextStyle(fontSize: fontSizeStack1),
                      ),
                    ]),
                  )
                ]),
              )
            ]),
          ),
        ),
        Positioned(
          //Xin chào [username]
          top: 16,
          left: 20,
          child: SizedBox(
            child: Text('Xin chào ${widget.username}',
                style:
                    TextStyle(fontSize: fontSizeStack1, color: Colors.white)),
          ),
        ),
        Positioned(
          // dropdown menu
          top: 40, // Vị trí từ trên xuống
          left: 20, // Vị trí từ trái sang phải
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            elevation: 4,
            style: TextStyle(color: Colors.black, fontSize: fontSizeStack1),
            hint: const Text(
              "Chọn quận",
              style: TextStyle(fontSize: 16),
            ),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(fontSize: 16),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
