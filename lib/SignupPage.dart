import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:ui';
// import 'dart:convert';
import 'package:flutter_application_1/LoginPage.dart';
import 'package:flutter_application_1/Privacy.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // final TextEditingController _usernameController = TextEditingController();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();
  // final TextEditingController _otpController = TextEditingController();

  bool _obscureText = true;
  bool _obscureConfirmText = true;
  bool _isTextPressed = false;

  // Future<void> registerUser(String text) async {
  //   var url = Uri.parse(
  //       'http://10.0.2.2:3000/api/users/register'); // Use 10.0.2.2 for Android emulator
  //   var response = await http.post(url, body: {
  //     'username': _usernameController.text,
  //     'email': _emailController.text,
  //     'password': _passwordController.text,
  //     'otp': _otpController.text,
  //   });

  //   if (response.statusCode == 200) {
  //     var data = json.decode(response.body);
  //     print("Registration successful: $data");
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => Privacy()),
  //     );
  //   } else {
  //     print("Registration failed: ${response.body}");
  //   }
  // }

  // Future<void> sendOTPEmail(String email) async {
  //   var url = Uri.parse(
  //       'http://10.0.2.2:3000/api/users/register/emailOTP'); // Use 10.0.2.2 for Android emulator
  //   var response = await http.post(url, body: {
  //     'email': email,
  //   });

  //   if (response.statusCode == 200) {
  //     // Handle successful OTP email sending
  //     print("OTP Email sent successfully");
  //   } else {
  //     // Handle error
  //     print("Failed to send OTP Email: ${response.body}");
  //   }
  // }

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
                    // controller: _usernameController,
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
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 350,
                  child: TextFormField(
                    // controller: _otpController,
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
                  onPressed: () async {
                    // await registerUser(
                    //     _usernameController.text,
                    //     _emailController.text,
                    //     _passwordController.text,
                    //     _otpController.text);
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
