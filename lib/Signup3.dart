import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginPage.dart';

class SignUp3 extends StatefulWidget {
  const SignUp3({super.key});

  @override
  State<SignUp3> createState() => __SignUp3State();
}

class __SignUp3State extends State<SignUp3> {
  String? _selectedSchool;

  final List<String> _school = [
    'สวนกุหลาบวิทยาลัย',
    'เตรียมอุดมศึกษาพัฒนาการ',
    'บดินทรเดชา (สิงห์ สิงหเสนี)',
    'หอวัง',
    'สามเสนวิทยาลัย',
  ];

  double _progressValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'ระดับชั้นที่คุณกำลังศึกษาอยู่',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF32343D),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: 350,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                  width: 1,
                ),
              ),
              child: DropdownButton<String>(
                value: _selectedSchool,
                hint: Text('โรงเรียน'),
                icon: const Icon(Icons.arrow_drop_down),
                isExpanded: true,
                items: _school
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedSchool = newValue;
                  });
                },
                dropdownColor: Colors.white,
                style: TextStyle(color: Colors.black, fontSize: 16),
                underline: Container(),
              ),
            ),
            const SizedBox(height: 410),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    if (_selectedSchool != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return const Color(
                              0xFF383866); 
                        }
                        return _selectedSchool != null
                            ? const Color(0xFF46467A)
                            : const Color(0xFFDBDBFF); 
                      },
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(16),
                    ),
                  ),
                ),
                SizedBox(
                    width: 16), 
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: 350,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: _progressValue,
                  backgroundColor: const Color(0xFFDBDBFF),
                  valueColor:
                      const AlwaysStoppedAnimation<Color>(Color(0xFF46467A)),
                  minHeight: 5,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}