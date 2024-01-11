import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.pink[100]!,
              Colors.orange[100]!,
              Colors.purple[100]!,
            ],
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 250),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ไม่มีรูป Flutter Logo ในนี้
              SizedBox(height: 50),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'อีเมล',
                  filled: true,
                  fillColor: Color.fromARGB(255, 246, 246, 247),
                  labelStyle: TextStyle(
                    fontSize: 16.0,
                    color: Color.fromARGB(
                      255, 50, 52, 61),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'รหัสผ่าน',
                  filled: true,
                  fillColor: Color.fromARGB(
                    255, 246, 246, 247),
                  labelStyle: TextStyle(
                    fontSize: 16.0,
                    color: Color.fromARGB(
                      255, 50, 52, 61), 
                  ),
                ),
              ),

              SizedBox(height: 40),
              ElevatedButton(
                child: Text(
                  'ลงชื่อเข้าใช้',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 70, 70, 122),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                ),
              ),
              TextButton(
                child: Text(
                  'ลืมรหัสผ่าน',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
              TextButton(
                child: Text(
                  'หากคุณยังไม่มีบัญชีของเรา? สร้างบัญชี',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// knjnmhbj