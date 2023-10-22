import 'package:flutter/material.dart';
import 'package:projectPet/login/pettype.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  String _inputPIN = '';
  static const _PIN = '123456';
  double buttonSize = 75.0;
  Color borderColor = Colors.black; // สีขอบเริ่มต้น

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // รูปภาพพื้นหลัง
          Positioned.fill(
            child: Image.asset(
              'assets/images/framedog.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/dog1.png',
                          width: 300.0,
                          height: 180.0,
                        )
                      ],
                    ),
                    Text(
                      'PeT WORLD',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 75.0,
                        fontFamily: 'PawWow',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '🐧🥕🐾🐇🐈๋🐦🐇🎀🦴🐶',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        //color: Colors.brown.shade400,
                        fontFamily: 'First',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Password : 123456',
                      style: TextStyle(
                        fontSize: 32.0,
                        color: Colors.red.shade300,
                        fontFamily: 'First',
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < 6; i++) buildPassCode(i: i),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var i = 1; i <= 3; i++) _buildButton2(num: i),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var i = 4; i <= 6; i++) _buildButton2(num: i),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var i = 7; i <= 9; i++) _buildButton2(num: i),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 75.0,
                                height: 75.0,
                              ),
                            ),
                            _buildButton2(num: 0),
                            _buildButton2(num: -1),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/password1.png',
                                  width: 50.0,
                                  height: 40.0,
                                ),
                                Text(
                                  ' ลืมรหัสผ่าน',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.red,
                                    fontFamily: 'แคนดี้',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButton2({int? num}) {
    Widget? child;
    BoxDecoration? boxDecoration;
    Color backgroundColor = Colors.white; // สีพื้นหลัง
    Color textColor = Colors.black; // สีตัวอักษร
    if (num != -1) {
      child = Text(
        '${num}',
        style: TextStyle(fontSize: 20.0, color: textColor),
      );
      boxDecoration = BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(
          color: borderColor, // ตั้งค่าสีขอบ
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(16.0),
        color: backgroundColor,
      );
    } else {
      child = Icon(
        Icons.backspace,
        size: 30.0,
        color: Colors.red.shade300,
      );
    }
    Color hoverBorderColor = Colors.red.shade200; // สีขอบเมื่อนำเมาส์ไปชี้
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            if (num != -1 && _inputPIN.length != 6) {
              _inputPIN += '$num';
            } else
              _inputPIN = _inputPIN.substring(0, _inputPIN.length - 1);
          });
          checkPin();
        },
        onHover: (isHovering) {
          setState(() {
            borderColor = isHovering ? hoverBorderColor : Colors.black;
          });
        },
        borderRadius: BorderRadius.circular(buttonSize / 2),
        child: Container(
          width: buttonSize,
          height: buttonSize,
          decoration: boxDecoration,
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }

  checkPin() {
    if (_inputPIN.length == 6) {
      if (_inputPIN == _PIN) {
        Future.delayed(Duration(milliseconds: 100), () {
          setState(() {
            _inputPIN = '';
          });
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => pettype(),
            ),
          );
        });
      } else {
        Future.delayed(Duration(milliseconds: 100), () {
          setState(() {
            _inputPIN = '';
          });

          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context,) {
                return AlertDialog(
                  title: Row(
                    children: [
                      Text('Incorrect PIN'),
                    ],
                  ),
                  content: Text('Please try again'),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Ok',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                );
              });
        });
      }
    }
  }

  Widget buildPassCode({int? i}) { //เมื่อมีการกดรหัสเข้ามาจะแสดงสีชมพูเข้มในวงกลม
    BoxDecoration? blankPIN = BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.red.withOpacity(0.25),
    );

    BoxDecoration? fillPIN = BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.pink,
    );
    return Padding(
      padding: const EdgeInsets.only(bottom: 80.0, left: 10.0, right: 10.0),
      child: Container(
        width: 20.0,
        height: 20.0,
        decoration: (i! < _inputPIN.length) ? fillPIN : blankPIN,
      ),
    );
  }
}
