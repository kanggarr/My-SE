import 'package:flutter/material.dart';
import 'package:flutter_application_1/Signup1.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  bool _isAgreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('นโยบายด้านความปลอดภัย'),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '1. สิทธิการใช้งาน (Terms of Use): \n\n'
                '2. 1.1 \n\n'
                'ผู้ใช้บริการตกลงที่จะปฏิบัติตามเงื่อนไขและข้อกำหนดในการใช้บริการนี้ \n\n'
                '1.2'
                'การใช้บริการต้องเป็นไปตามกฎหมายและข้อบังคับที่เกี่ยวข้องทั้งหมด 1.3 บริการสามารถถูกยกเลิกหรือระงับได้ตามดุลยพินิจของผู้ให้บริการ \n\n'
                '1. การใช้บริการ (Service Usage): \n\n'
                '2.1 \n\n'
                'ผู้ใช้ต้องให้ข้อมูลที่ถูกต้องและปัจจุบันในการลงทะเบียนและในการใช้บริการ 2.2 การใช้บริการต้องเป็นไปตามวัตถุประสงค์ที่ระบุไว้และไม่สร้างความไม่สงบหรือเสียหายต่อผู้อื่น 2.3 ผู้ให้บริการสงวนสิทธิ์ในการปรับปรุงหรือปรับเปลี่ยนบริการทุกประการ \n\n'
                '1. การยุติบริการ (Termination of Service): \n\n'
                '3.1 \n\n'
                'ผู้ให้บริการสามารถยุติการให้บริการได้ทุกเมื่อเมื่อมีเหตุผลที่สมควร 3.2 ผู้ใช้สามารถยุติบริการได้โดยปฏิบัติตามขั้นตอนที่ระบุไว้ในระเบียบ 3.3 หลังจากยุติบริการแล้ว ผู้ใช้ต้องปฏิบัติตามนโยบายเกี่ยวกับข้อมูลและความเป็นส่วนตัว \n\n'
                '1. สิทธิ์ในข้อมูลหรือข้อความ (Rights in Data or Content): \n\n'
                '4.1 \n\n'
                'ผู้ใช้จะยังคงครอบครองสิทธิ์ในข้อมูลและข้อความที่เข้าสู่ระบบ 4.2 ผู้ใช้ไม่สามารถนำข้อมูลหรือข้อความจากบริการมาใช้ในทางที่ละเมิดกฎหมายหรือทำให้เกิดความเสียหาย \n\n'
                '1.สิทธิ์ในทรัพย์สินทางปัญญา (Intellectual Property Rights): \n\n'
                '5.1 \n\n'
                'ทรัพย์สินทางปัญญาที่เกี่ยวข้องกับบริการนี้เป็นทรัพย์สินของผู้ให้บริการ 5.2 ผู้ใช้ไม่ได้รับสิทธิในการทำซ้ำหรือใช้ทรัพย์สินทางปัญญานี้โดยไม่ได้รับอนุญาต \n\n'
                '1.ความเป็นส่วนตัว (Privacy): \n\n'
                '6.1 \n\n'
                'ข้อมูลส่วนตัวของผู้ใช้จะถูกเก็บรักษาตามนโยบายความเป็นส่วนตัวที่ระบุไว้ 6.2 ผู้ให้บริการจะปกป้องความเป็นส่วนตัวของผู้ใช้และไม่ให้ข้อมูลนี้ถูกเปิดเผยโดยไม่ได้รับอนุญาต 6.3 ผู้ใช้มีสิทธิ์ในการตรวจสอบและแก้ไขข้อมูลส่วนตัวของตนเมื่อจำเป็น \n\n'
                '1. วัตถุประสงค์ของบริการ "Example": \n\n'
                'a. การให้บริการเชิงคุณภาพ: \n\n'
                '• เพื่อให้ผู้ใช้มีประสบการณ์การใช้บริการที่มีคุณภาพและเชื่อถือได้. \n\n'
                'b. การปกป้องสิทธิ์และความปลอดภัยของข้อมูล: \n\n'
                '• ในการรักษาความปลอดภัยของข้อมูลและสิทธิ์ของผู้ใช้ตามที่ระบุใน Term of Service. \n\n'
                'c. ความโปร่งใสและการให้ข้อมูล: \n\n'
                '• เพื่อให้ผู้ใช้ทราบถึงข้อมูลเกี่ยวกับการใช้บริการและข้อกำหนดที่เกี่ยวข้อง. \n\n'
                'd. การยุติบริการที่เป็นไปตามกฎหมาย: \n\n'
                '• เพื่อระบุขั้นตอนและเหตุผลที่เกี่ยวข้องกับการยุติบริการตามที่ระบุใน Term of Service. \n\n'
                'e. การรักษาสิทธิ์ทรัพย์สินทางปัญญา: \n\n'
                '• เพื่อปกป้องและรักษาสิทธิ์ทรัพย์สินทางปัญญาที่เกี่ยวข้องกับบริการ "Example". \n\n'
                'f. การปฏิบัติตามนโยบายความเป็นส่วนตัว: \n\n'
                '• เพื่อรักษาความเป็นส่วนตัวของผู้ใช้ตามที่กำหนดในนโยบายความเป็นส่วนตัว. \n\n'
                'g. การให้ข้อมูลที่ถูกต้องและประสงค์ในการให้บริการ: \n\n'
                '• เพื่อให้ผู้ใช้ป้อนข้อมูลที่ถูกต้องและเพียงพอต่อการให้บริการ. \n\n'
                'h. การรับผิดชอบในการป้องกันการใช้บริการที่ไม่เหมาะสม: \n\n'
                '• เพื่อป้องกันการใช้บริการที่ไม่เหมาะสมหรือที่ทำให้เกิดความเสียหายต่อผู้ใช้. \n\n'
                'i. การสร้างประสบการณ์ที่ใช้งานง่าย: \n\n'
                '• เพื่อให้ผู้ใช้มีประสบการณ์การใช้บริการที่ง่ายต่อการนำใช้. \n\n'
                'j. การปรับปรุงและพัฒนาบริการ: \n\n'
                '• เพื่อนำเสนอการปรับปรุงและพัฒนาบริการตามความต้องการและแนวโน้มทางเทคโนโลยี.',
                style: TextStyle(
                  fontSize: 16.0,
                  height: 1.2,
                ),
              ),
              SizedBox(height: 10),
              CheckboxListTile(
                title: Text('ยินยอม'),
                value: _isAgreed,
                onChanged: (bool? value) {
                  setState(() {
                    _isAgreed = value ?? false;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              Center(
                child: ElevatedButton(
                  child: const Text(
                    'ดำเนินการต่อ',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  onPressed: _isAgreed
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp1()),
                          );
                        }
                      : null,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (!_isAgreed)
                          return const Color(0xFFDBDBFF);
                        if (states.contains(MaterialState.pressed))
                          return const Color(
                              0xFF383866); 
                        return const Color(
                            0xFF46467A); 
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
              )
            ],
          )),
    );
  }
}
