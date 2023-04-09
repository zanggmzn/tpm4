import 'package:flutter/material.dart';
import 'package:tugas4_tpm/listjam.dart';

class MenuUtama extends StatefulWidget {
  const MenuUtama({super.key});

  @override
  State<MenuUtama> createState() => _MenuUtamaState();
}

class _MenuUtamaState extends State<MenuUtama> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xfff0f1f5),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(18),
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width,
                height: size.height * 0.5,
                child: Image.asset('assets/math.png'),
              ),
              SizedBox(
                width: 300,
                child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: '            Select Calculation',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              Container(
                height: size.height * .26,
                child: Stack(
                  children: [
                    Positioned(
                      top: -10,
                      right: 50,
                      child: Container(
                        padding: const EdgeInsets.all(22),
                        height: 100,
                        width: 300,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            side: const BorderSide(
                                width: 2, color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ListJam(),
                                ));
                          },
                          child: const Text(
                            "T R A P E S I U M",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        //child: Image.asset('assets/right-arrow.png'),
                      ),
                    ),
                    Positioned(
                      top: 80,
                      right: 50,
                      child: Container(
                        padding: const EdgeInsets.all(22),
                        height: 100,
                        width: 300,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            side: const BorderSide(
                                width: 2, color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ListJam(),
                                ));
                          },
                          child: const Text(
                            "T A B U N G",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        //child: Image.asset('assets/right-arrow.png'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
