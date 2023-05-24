import 'package:flutter/material.dart';

class MyIcons {
  MyIcons._();

  static const IconData customIcon = IconData(0xe800, fontFamily: '');
}
class btGiupViec extends StatelessWidget {
  Color bgButton = Color.fromARGB(128, 255, 127, 80);
  @override
  Widget build(BuildContext context) {
    return  Center(
          child: HorizontalButtons(
            buttonData: [
              ButtonData(
                icon: Icons.home,
                label: 'Tổng vệ sinh',
                backgroundColor: bgButton,
              ),
              ButtonData(
                icon: Icons.brush,
                label: 'Dọn dẹp',
                backgroundColor: bgButton,
              ),
              ButtonData(
                icon: Icons.dinner_dining,
                label: 'Nấu ăn',
                backgroundColor: bgButton,
              ),
              ButtonData(
                icon: Icons.shopping_cart,
                label: 'Đi chợ',
                backgroundColor: bgButton,
              ),
              ButtonData(
                icon: Icons.settings,
                label: 'Giúp việc',
                backgroundColor: bgButton,
              ),
              ButtonData(
                icon: Icons.more,
                label: 'Xem thêm',
                backgroundColor: bgButton,
              ),
            ],
            onPressed: (label) {
              print('Button $label pressed');
            },
          ),
        );
  }
}

class ButtonData {
  final IconData icon;
  final String label;
  final Color backgroundColor;

  ButtonData({required this.icon, required this.label, required this.backgroundColor});
}

class HorizontalButtons extends StatelessWidget {
  final List<ButtonData> buttonData;
  final void Function(String) onPressed;

  HorizontalButtons({required this.buttonData, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buttonData.map((data) {
        return Column(
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: ElevatedButton(
                onPressed: () => onPressed(data.label),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  primary: data.backgroundColor,
                ),
                child: Icon(data.icon),
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              data.label,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
