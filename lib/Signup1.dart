import 'package:flutter/material.dart';
import 'package:flutter_application_1/Signup2.dart';

class SignUp1 extends StatefulWidget {
  const SignUp1({super.key});

  @override
  State<SignUp1> createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  String? _selectedLevel;

  final List<String> _educationLevels = [
    'มัธยมศึกษาปีที่ 4',
    'มัธยมศึกษาปีที่ 5',
    'มัธยมศึกษาปีที่ 6',
    'Gap Year',
  ];

  double _progressValue = 0.3;

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
                value: _selectedLevel,
                hint: Text('เลือกระดับชั้น'),
                icon: const Icon(Icons.arrow_drop_down),
                isExpanded: true,
                items: _educationLevels
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedLevel = newValue;
                  });
                },
                dropdownColor: Colors.white,
                style: TextStyle(color: Colors.black, fontSize: 16),
                underline: Container(),
              ),
            ),
            const SizedBox(height: 410),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    if (_selectedLevel != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup2()),
                      );
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return const Color(0xFF383866);
                        }
                        return _selectedLevel != null
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
                SizedBox(width: 16),
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