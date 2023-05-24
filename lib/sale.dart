import 'package:flutter/material.dart';

class salePromotion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text(
            "Khuyến mãi",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              const Text(
                'Ưu đãi',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Chọn ưu đãi",
                          style: TextStyle(fontSize: 16),
                        ))
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
