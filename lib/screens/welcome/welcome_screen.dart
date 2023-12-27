import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:loginpage/screens/login/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  //Code : Key สำหรับการเปลี่ยนหน้า
  final introKey = GlobalKey<IntroductionScreenState>();
  //Code :  Intro End
  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => LoginScreen()),
    );
  }

  //Build Image (กำหนด path และ ขนาดของรูป)
  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    //กำหนดรูปแบบของตัวอักษร
    const bodyStyle = TextStyle(fontFamily: "Sarabun", fontSize: 19.0);

    //กำหนดรูปแบบของหน้า
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontFamily: "IBMPlexSansThai",
          fontSize: 28.0,
          fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      //Code : Set key
      key: introKey,
      globalBackgroundColor: Colors.white,
      //Code : Header
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: _buildImage('logocomsci.jpg', 40),
          ),
        ),
      ),
      pages: [
        //Code : PageModels
        PageViewModel(
          title: "ยินดีต้อนรับสู่ร้านหนังสือวิทยาการคอมพิวเตอร์",
          body:
              "ร้านหนังสือที่รวบรวมหนังสือคอมพิวเตอร์ไว้เพื่อนักศึกษาวิทยาการคอมพิวเตอร์ผู้มีใจรักในสาขาวิทยาการคอมพิวเตอร์ทุกคน",
          image: _buildImage('1.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "24/7 375",
          body:
              "เปิดทำการ \n24 ชั่วโมงต่อวัน 7 วันต่อสัปดาห์\n 365 วันต่อปี ... ร้านหนังสือที่เปิดทุกวัน ทุกเดือน ทุกปี ไม่มีวันหยุด",
          image: _buildImage('2.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          body:
              "พบกับร้านหนังสือที่รวบรวมหนังสือวิทยาการคอมพิวเตอร์ไว้มากที่สุด ไม่ว่าจะเป็นหนังสือเกี่ยวกับการพัฒนาโมบายแอปพลิเคชัน การพัฒนาเว็บแอปพลิเคชัน ปัญญาประดิษฐ์ วิทยาการข้อมูล อัลกอริทึม และอีกมากมาย",
          image: _buildImage('3.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "ศึกษาเกี่ยวกับ",
          body:
              "การเขียนโปรแกรมภาษาคอมพิวเตอร์\nสถาปัตยกรรมคอมพิวเตอร์\nการออกแบบระบบสารสนเทศ \nโครงสร้างข้อมูล \nระบบเครือข่าย \nระบบฐานข้อมูล \nการพัฒนาแอปพลิเคชันบนอุปกรณ์เคลื่อนที่ ",
          image: _buildImage('4.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "ช่องทางการติดต่อ",
          body:
              "สาขาวิทยาการคอมพิวเตอร์ \nคณะวิทยาศาสตร์และเทคโนโลยี มหาวิทยาลัยราชภัฏสงขลา ถนนกาญจนวนิช ต.เขารูปช้าง อ.เมือง จ.สงขลา 90000 \nโทรศัพท์ : 074-336949 ต่อ222 \nเว็บไซต์ : HTTP://CS.SKRU.AC.TH/CS/ \nเฟซบุ๊ก : หลักสูตรวิทยาการคอมพิวเตอร์ SKRU",
          image: _buildImage('5.jpg'),
          decoration: pageDecoration,
        ),
      ],

      //Code : On Intro End button and function
      onDone: () => _onIntroEnd(context),
      //Code : On Intro Skip button and function
      onSkip: () => _onIntroEnd(context),

      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      showDoneButton: true,
      showSkipButton: true,

      back: const Icon(Icons.arrow_back),
      skip: const Text("ข้าม",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Sarabun",
              fontWeight: FontWeight.w600)),
      done: const Text("เสร็จสิ้น",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Sarabun",
              fontWeight: FontWeight.w600)),
      //Code : Show skip button

      next: const Icon(
        Icons.arrow_forward,
        color: Colors.blueAccent,
      ),
      //Code : Show done button
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeColor: Colors.blueAccent,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Color.fromARGB(221, 0, 0, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
