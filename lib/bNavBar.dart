import 'package:flutter/material.dart';



class bNavBar extends StatefulWidget {
  @override
  _bNavBarState createState() => _bNavBarState();
}

class _bNavBarState extends State<bNavBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    FavoritesScreen(),
    CartScreen(),
    ProfileScreen(),
  ];
  Color bgButton = Color.fromARGB(255, 255, 215, 185);
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Trang chủ',
              backgroundColor: bgButton
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.task),
              label: 'Hoạt động',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Thông báo',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Tài Khoản',
            ),
          ],
          selectedItemColor: Color.fromARGB(255, 255, 127, 80), // Màu cho biểu tượng khi được chọn
  );}
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Screen'),
    );
  }
}

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favorites Screen'),
    );
  }
}

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Cart Screen'),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Screen'),
    );
  }
}
