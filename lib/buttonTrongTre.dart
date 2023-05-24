import 'package:flutter/material.dart';
import 'main2.dart';

class btTrongTre extends StatelessWidget {
  String username = "";
  String sdt = "";
  btTrongTre({required this.username, required this.sdt});
  double widthSizedBox = 16;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(128, 255, 127, 80), // Màu nền của nút
                  onPrimary: Colors.white, // Màu chữ trên nút
                  textStyle: const TextStyle(fontSize: 16), // Kiểu chữ của nút
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 16), // Padding của nút
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8)), // Hình dạng của nút
                  elevation: 2, // Độ nổi của nút
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => secondPage(username: username,sdt: sdt,)),
                  );
                },
                child: const Icon(Icons.supervisor_account),
              ),
              const SizedBox(height: 2,),
              const Text("Trông trẻ & giao"),
              const Text("tiếp tiếng anh")
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(128, 255, 127, 80), // Màu nền của nút
                  onPrimary: Colors.white, // Màu chữ trên nút
                  textStyle: const TextStyle(fontSize: 16), // Kiểu chữ của nút
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 16), // Padding của nút
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8)), // Hình dạng của nút
                  
                  elevation: 2, // Độ nổi của nút
                ),
                child: const Icon(Icons.directions_bus),
              ),
              const SizedBox(height: 2,),
              const Text("Đưa đón trẻ"),
              const Text('   '),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(160, 255, 127, 80), // Màu nền của nút
                  onPrimary: Colors.white, // Màu chữ trên nút
                  textStyle: const TextStyle(fontSize: 16), // Kiểu chữ của nút
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 16), // Padding của nút
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8)), // Hình dạng của nút
                  elevation: 2, // Độ nổi của nút
                ),
                onPressed: () {
                 
                },
                child: const Icon(Icons.more),
              ),
              const SizedBox(height: 2,),
              const Text("Xen thêm"),
              const Text('   '),
            ],
          ),
        ],
      ),
    );
  }
}

