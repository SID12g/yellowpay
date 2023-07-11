import 'package:yellow_pay/widgets/setting_button.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  SettingScreenState createState() => SettingScreenState();
}

class SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Screenforset(),
          ),
        ),
      ],
    );
  }
}

class SetiNform extends StatelessWidget {
  const SetiNform({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(48, 200, 0, 0),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            ' CHEESEPAY sid12g@naver.com',
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 100, 97, 97)),
          ),
        ],
      ),
    );
  }
}

class Screenforset extends StatelessWidget {
  const Screenforset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 70, 10, 0),
      child: Column(
        children: [
          const SettingSetscreen(
            settitle: '개인 정보',
            iconsetting: Icons.arrow_forward_ios_rounded,
          ),
          Transform.translate(
            offset: const Offset(0, 10),
            child: const SettingSetscreen(
              settitle: '결제 수단',
              iconsetting: Icons.arrow_forward_ios_rounded,
            ),
          ),
          Transform.translate(
            offset: const Offset(0, 20),
            child: const SettingSetscreen(
              settitle: '보안 정보',
              iconsetting: Icons.arrow_forward_ios_rounded,
            ),
          ),
          Transform.translate(
            offset: const Offset(0, 30),
            child: const SettingSetscreen(
              settitle: '문의 하기',
              iconsetting: Icons.arrow_forward_ios_rounded,
            ),
          ),
          Transform.translate(
            offset: const Offset(0, 40),
            child: const SettingSetscreen(
              settitle: '추가 예정',
              iconsetting: Icons.arrow_forward_ios_rounded,
            ),
          ),
          Transform.translate(
            offset: const Offset(0, 50),
            child: const SettingSetscreen(
              settitle: '추가 예정',
              iconsetting: Icons.arrow_forward_ios_rounded,
            ),
          ),
          Transform.translate(
            offset: const Offset(0, 60),
            child: const SettingSetscreen(
              settitle: '추가 예정',
              iconsetting: Icons.arrow_forward_ios_rounded,
            ),
          ),
          Transform.translate(
            offset: const Offset(0, 70),
            child: const SettingSetscreen(
              settitle: '추가 예정',
              iconsetting: Icons.arrow_forward_ios_rounded,
            ),
          ),
          Transform.translate(
            offset: const Offset(0, 80),
            child: const SettingSetscreen(
              settitle: '추가 예정',
              iconsetting: Icons.arrow_forward_ios_rounded,
            ),
          ),
          Transform.translate(
            offset: const Offset(0, 90),
            child: const SettingSetscreen(
              settitle: '추가 예정',
              iconsetting: Icons.arrow_forward_ios_rounded,
            ),
          ),
          const SetiNform()
        ],
      ),
    );
  }
}
