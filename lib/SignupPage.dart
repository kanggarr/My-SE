import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginPage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage(
          //       "assets/images/Saly-13.png"),
          //   fit: BoxFit.cover,
          // ),
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
          margin: const EdgeInsets.only(top: 130),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'สร้างบัญชี Example',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 350,
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'ชื่อผู้ใช้งาน',
                    filled: true,
                    fillColor: Color.fromARGB(255, 246, 246, 247),
                    labelStyle: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 50, 52, 61),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 350,
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'อีเมล',
                    filled: true,
                    fillColor: Color.fromARGB(255, 246, 246, 247),
                    labelStyle: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 50, 52, 61),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 350,
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'เบอร์โทรศัพท์',
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 50, 52, 61),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 228, 228, 231), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 228, 228, 231), width: 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: TextFormField(
                  obscureText:
                      _obscureText, // set to true to hide password by default
                  decoration: InputDecoration(
                    labelText: 'รหัสผ่าน',
                    filled: true,
                    fillColor: Color.fromARGB(255, 246, 246, 247),
                    labelStyle: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 50, 52, 61),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(_obscureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: TextFormField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: 'ยืนยันรหัสผ่าน',
                    filled: true,
                    fillColor: Color.fromARGB(255, 246, 246, 247),
                    labelStyle: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 50, 52, 61),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(_obscureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                child: const Text(
                  'สมัครเข้าใช้งาน',
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'มีบัญชีผู้ใช้งานอยู่แล้ว '),
                        TextSpan(
                          text: 'ลงชื่อเข้าใช้',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
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
