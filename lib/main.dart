import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          margin: const EdgeInsets.only(top: 250),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ไม่มีรูป Flutter Logo ในนี้
              const SizedBox(height: 50),
              TextFormField(
                decoration: const InputDecoration(
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
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
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

              const SizedBox(height: 40),
              ElevatedButton(
                // ignore: sort_child_properties_last
                child: const Text(
                  'ลงชื่อเข้าใช้',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: const Color.fromARGB(255, 70, 70, 122),
                  // ignore: deprecated_member_use
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                child: const Text(
                  'ลืมรหัสผ่าน',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                child: const Text(
                  'หากคุณยังไม่มีบัญชีของเรา? สร้างบัญชี',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
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
// ekfmelrkfro