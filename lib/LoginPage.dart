import 'package:flutter/material.dart';
import 'package:flutter_application_1/SignupPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  bool _isTextPressed = false;

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
          margin: const EdgeInsets.only(top: 250),
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
                'Example',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Welcome to Example',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 164, 165, 180),
                ),
              ),
              const SizedBox(height: 30),
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
              const SizedBox(height: 25),
              ElevatedButton(
                child: const Text(
                  'ลงชื่อเข้าใช้',
                  style: TextStyle(fontSize: 16.0),
                ),
                onPressed: () {},
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
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                child: const Text(
                  'ลืมรหัสผ่าน',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: GestureDetector(
                  onTapDown: (_) =>
                      setState(() => _isTextPressed = true), 
                  onTapUp: (_) =>
                      setState(() => _isTextPressed = false), 
                  onTap: () {
                    setState(() => _isTextPressed = false); 
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'หากคุณยังไม่มีบัญชีของเรา? '),
                        TextSpan(
                          text: 'สร้างบัญชี',
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
    );
  }
}
