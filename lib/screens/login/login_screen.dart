// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  //Code : Create key for form

  //Code : Create controller for text field (email and password)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Code : Wrap with GestureDetector
      body: Container(
          //Code : ตกแต่งพื้นหลัง
          child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              color: Color(0x7CFFFFFF),
              // Using for responsive layout
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                  child: Column(
                    children: [
                      Image.asset("assets/images/login.png", width: 75),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Column(
                          children: [
                            Text(
                              "เข้าสู่ระบบ",
                              style: TextStyle(
                                fontFamily: "IBMPlexSansThai",
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            //Code : Wrap with Form
                            //Code : Assign key to form
                            Column(
                              children: [
                                //Code : TextFormField for email
                                TextFormField(),
                                SizedBox(
                                  height: 10,
                                ),
                                //Code : TextFormField for password
                                TextFormField(),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        //Open Forgot password screen here
                                      },
                                      child: const Text(
                                        "ลืมรหัสผ่าน ?",
                                        style: TextStyle(
                                          fontFamily: "IBMPlexSansThai",
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lightBlueAccent,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                //Code : Login Button
                                ElevatedButton(
                                  onPressed: () {
                                    //Code : ตรวจสอบความถูกต้องของข้อมูล
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      height: 45,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "เข้าสู่ระบบ",
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontFamily: "IBMPlexSansThai",
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  const Row(
                                    children: [
                                      Expanded(
                                          child: Divider(
                                        color: Colors.black,
                                      )),
                                      Text(
                                        " หรือเข้าสู่ระบบด้วย ",
                                        style: TextStyle(
                                          fontFamily: "IBMPlexSansThai",
                                        ),
                                      ),
                                      Expanded(
                                          child: Divider(
                                        color: Colors.black,
                                      )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "assets/images/google.png",
                                          width: 30,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "assets/images/facebook.png",
                                          width: 30,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "assets/images/twitter.png",
                                          width: 30,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "ยังไม่มีบัญชีกับเรา ? ",
                                  style: TextStyle(
                                    fontFamily: "IBMPlexSansThai",
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    //Open Sign up screen here
                                  },
                                  child: const Text(
                                    "สมัครฟรี",
                                    style: TextStyle(
                                      fontFamily: "IBMPlexSansThai",
                                      color: Colors.lightBlueAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
