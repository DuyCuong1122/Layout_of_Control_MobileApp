import 'package:flutter/material.dart';
import 'SingleCSV.dart';

class LoginScreenMain extends StatefulWidget {
  const LoginScreenMain({super.key});

  @override
  _LoginScreenMainState createState() => _LoginScreenMainState();
}

class _LoginScreenMainState extends State<LoginScreenMain> {
  final usernameController = TextEditingController();
  final sdtController = TextEditingController();
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(200, 255, 215, 185),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    labelText: 'Tên đăng nhập',
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: TextField(
                  controller: sdtController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    labelText: 'Số điện thoại',
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    String username = usernameController.text;
                    String sdt = sdtController.text;
                    Navigator.pushNamed(context, '/third',
                        arguments: {'username': username, 'sdt': sdt});
                  },
                  child: const Text('Đăng nhập'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return Colors.red;
                        }
                        return Color.fromARGB(255, 255, 127, 80);
                      }),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      elevation: MaterialStateProperty.resolveWith<double>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed) ||
                              states.contains(MaterialState.disabled)) {
                            return 0;
                          }
                          return 10;
                        },
                      ))),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Đăng nhập bằng cách khác",
                    style: TextStyle(color: Colors.black),
                  )),
              TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.facebook,
                      color: Colors.blueAccent,
                    ),
                    Text('  '),
                    Icon(
                      Icons.email,
                      color: Colors.redAccent,
                    ),
                    SizedBox(width: 5),
                  ],
                ),
                onPressed: () {},
              ),
              TextButton(
                child: const Text(
                  "Đăng kí tài khoản mới",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
              ),
              TextButton(onPressed: () {}, child: const Text('Quên mật khẩu?')),
            ],
          ),
        ),
      ),
    );
  }
}
