import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginPage.dart';
import 'package:flutter_application_1/Privacy.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  bool _obscureText = true;
  bool _obscureConfirmText = true;
  bool _isTextPressed = false;

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  Future<void> requestOTP(String email) async {
    var url = Uri.parse('http://192.168.1.165:3001/api/users/register/emailOTP');
    var response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'email': email}),
    );

    if (response.statusCode == 200) {
    var data = json.decode(response.body);
    print("Send OTP successful: $data");
  } else {
    print("Send OTP failed: ${response.body}");
  }
  }

  Future<void> registerUser(String username, String email, String password, String otp) async {
    var url = Uri.parse('http://192.168.1.165:3001/api/users/register');
    var response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'username': username,
        'email': email,
        'password': password,
        'otp': otp,
      }),
    );

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      print("Register successful: $data");
  } else {
      print("Register failed: ${response.body}");
  }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _otpController.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
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
          margin: const EdgeInsets.only(top: 150),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 15),
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
                    controller: _usernameController,
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
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'อีเมล',
                      filled: true,
                      fillColor: Color.fromARGB(255, 246, 246, 247),
                      labelStyle: TextStyle(
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 50, 52, 61),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {
                          requestOTP(_emailController.text);
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 350,
                  child: TextFormField(
                    controller: _otpController,
                    decoration: const InputDecoration(
                      labelText: 'OTP',
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 50, 52, 61),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 228, 228, 231),
                            width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 228, 228, 231),
                            width: 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 350,
                  child: TextFormField(
                    obscureText: _obscureText,
                    controller: _passwordController,
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
                  width: 350,
                  child: TextFormField(
                    obscureText: _obscureConfirmText,
                    decoration: InputDecoration(
                      labelText: 'ยืนยันรหัสผ่าน',
                      filled: true,
                      fillColor: Color.fromARGB(255, 246, 246, 247),
                      labelStyle: TextStyle(
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 50, 52, 61),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(_obscureConfirmText
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _obscureConfirmText = !_obscureConfirmText;
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
                    style: TextStyle(fontSize: 16.0),
                  ),
                  onPressed: () {
                    registerUser(
                      _usernameController.text,
                      _emailController.text,
                      _passwordController.text,
                      _otpController.text,
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Privacy()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return const Color(0xFF383866);
                        return const Color(0xFF46467A);
                      },
                    ),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: GestureDetector(
                    onTapDown: (_) => setState(() => _isTextPressed = true),
                    onTapUp: (_) => setState(() => _isTextPressed = false),
                    onTap: () {
                      setState(() => _isTextPressed = false);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'มีบัญชีผู้ใช้งานอยู่แล้ว '),
                          TextSpan(
                            text: 'ลงชื่อเข้าใช้',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: _isTextPressed
                                  ? TextDecoration.underline
                                  : TextDecoration.none,
                            ),
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
      ),
    );
  }
}
