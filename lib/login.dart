import 'package:flutter/material.dart';
import 'package:tugas4_tpm/landing.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final String user = '123200152';
  final String pass = 'Maulida Maizani Assabila';

  TextEditingController cUser =
      TextEditingController(); // ambil nilai fill user
  TextEditingController cPass = TextEditingController(); // ambil nilai fill pas
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xfff0f1f5),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
        padding: const EdgeInsets.all(18),
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 300,
              child: RichText(
                  text: const TextSpan(
                      text: 'Welcome Back',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                        color: Color.fromARGB(255, 185, 38, 153),
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                        text: '\nMate!',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black87,
                            fontSize: 24))
                  ])),
            ),
            SizedBox(
              width: size.width,
              height: size.height * 0.37,
              child: Image.asset('assets/worker.png'),
            ),
            Container(
              height: size.height * .26,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.2),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: const Offset(0, 0),
                    )
                  ]),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Positioned(
                    top: 10,
                    left: 20,
                    child: Text(
                      'Login Here',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 50,
                      left: 20,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.person,
                                color: Colors.grey,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                width: 300,
                                child: TextField(
                                  controller: cUser,
                                  cursorColor: Colors.grey,
                                  style: const TextStyle(
                                    color: Colors.black54,
                                  ),
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Username',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: size.width * .8,
                            child: const Divider(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )),
                  Positioned(
                      top: 120,
                      left: 20,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.key,
                                color: Colors.grey,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 10),
                                width: 300,
                                child: TextField(
                                  controller: cPass,
                                  cursorColor: Colors.grey,
                                  style: const TextStyle(
                                    color: Colors.black54,
                                  ),
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: size.width * .8,
                            child: const Divider(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )),
                  Positioned(
                    bottom: -30,
                    right: 30,
                    child: Container(
                      padding: const EdgeInsets.all(22),
                      height: 80,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          checkLogic(context);
                        },
                        child: const Text('L O G I N'),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 175, 38, 185),
                        ),
                      ),
                      //child: Image.asset('assets/right-arrow.png'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ))),
    );
  }

  void checkLogic(BuildContext context) {
    if (cUser.text == user && cPass.text == pass) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Landing(),
          ));
      //snackbar itu pop up dr bawah
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login Berhasil!'),
          backgroundColor: Colors.blue,
        ),
      );
    } else if (cUser.text.isEmpty || cPass.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Username atau Password Harus Diisi!'),
          backgroundColor: Colors.red,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Username dan Password Anda Salah!'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
