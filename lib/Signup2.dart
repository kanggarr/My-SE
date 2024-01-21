import 'package:flutter/material.dart';
import 'package:flutter_application_1/Signup3.dart';

class Signup2 extends StatefulWidget {
  const Signup2({super.key});

  @override
  State<Signup2> createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  String? _selectedFaculty;
  String? _selectedMajor;

  final List<String> _faculty = [
    'วิทยาศาสตร์',
    'วิศวกรรมศาสตร์',
    'สถาปัตยกรรมศาสตร์',
    'อักษรศาสตร์',
    'นิเทศศาสตร์',
  ];

  List<String> _major = [];

  final Map<String, List<String>> facultyToMajors = {
    'วิทยาศาสตร์': [
      'เคมี',
      'วิทยาการคอมพิวเตอร์ประยุกต์',
      'จุลชีววิทยา',
      'สถิติ',
      'คณิตศาสตร์'
    ],
    'วิศวกรรมศาสตร์': [
      'คอมพิวเตอร์',
      'โยธา',
      'ไฟฟ้า',
      'เครื่องกล',
      'อุตสาหการ'
    ],
    'สถาปัตยกรรมศาสตร์': [
      'สถาปัตยกรรมภายใน',
      'สถาปัตยกรรม',
      'ออกแบบอุตสาหกรรม',
      'สถาปัตยกรรมไทย',
      'ภูมิสถาปัตย์'
    ],
    'อักษรศาสตร์': [
      'ประวัติศาสตร์',
      'ภาษาไทย',
      'ภาษาอังกฤษ',
      'ปรัชญา',
      'ภูมิศาสตร์'
    ],
    'นิเทศศาสตร์': [
      'ศิลปะการแสดง',
      'เทคโนโลยีการถ่ายภาพและภาพยนตร์',
      'การโฆษณา',
      'วารสารศาสตร์',
      'สื่อสารมวลชน'
    ]
  };

  double _progressValue = 0.6;

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
              'คณะและสาขาที่อยากเข้า',
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
                value: _selectedFaculty,
                hint: Text('คณะ'),
                icon: const Icon(Icons.arrow_drop_down),
                isExpanded: true,
                items: _faculty.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedFaculty = newValue;
                    _selectedMajor =
                        null;
                    _major = facultyToMajors[_selectedFaculty] ??
                        [];
                  });
                },
                dropdownColor: Colors.white,
                style: TextStyle(color: Colors.black, fontSize: 16),
                underline: Container(),
              ),
            ),
            const SizedBox(height: 15),
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
                value: _selectedMajor,
                hint: Text('สาขา'),
                icon: const Icon(Icons.arrow_drop_down),
                isExpanded: true,
                items: _major.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedMajor = newValue;
                  });
                },
                dropdownColor: Colors.white,
                style: TextStyle(color: Colors.black, fontSize: 16),
                underline: Container(),
              ),
            ),
            const SizedBox(height: 350),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    if (_selectedMajor != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp3()),
                      );
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return const Color(0xFF383866);
                        }
                        return _selectedMajor != null
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
                const SizedBox(width: 16),
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
