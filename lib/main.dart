import 'package:flutter/material.dart';
import 'LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/Saly-13.png"), // Replace with your background image path
            fit: BoxFit.cover,
          ),
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
          decoration: BoxDecoration(
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
              TextFormField(
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
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'รหัสผ่าน',
                  filled: true,
                  fillColor: Color.fromARGB(255, 246, 246, 247),
                  labelStyle: TextStyle(
                    fontSize: 16.0,
                    color: Color.fromARGB(255, 50, 52, 61),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                child: const Text(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
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
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
  padding: EdgeInsets.only(top: 40),
  child: TextButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    },
    style: TextButton.styleFrom(
      foregroundColor: Colors.black,
    ),
    child: RichText(
      text: const TextSpan(
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(text: 'หากคุณยังไม่มีบัญชีของเรา? '),
          TextSpan(
            text: 'สร้างบัญชี',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  ),
)

            ],
          ),
        ),
      ),
    );
  }
}
