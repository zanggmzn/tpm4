import 'package:flutter/material.dart';
import 'package:tugas4_tpm/datadiri.dart';
import 'package:tugas4_tpm/favorite.dart';
import 'package:tugas4_tpm/listjam.dart';
import 'package:tugas4_tpm/stopwatch.dart';

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                width: size.width,
                height: size.height * 0.35,
                child: Image.asset('images/troli.png'),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 300,
                child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: '            SELECT MAIN MENU',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: size.height * .35,
                child: Stack(
                  children: [
                    Positioned(
                      top: -20,
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
                                  builder: (context) => const Data(),
                                ));
                          },
                          child: const Text(
                            "A N G G O TA",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        //child: Image.asset('assets/right-arrow.png'),
                      ),
                    ),
                    Positioned(
                      top: 50,
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
                                  builder: (context) => const StopWatch(),
                                ));
                          },
                          child: const Text(
                            "S T O P W A T C H",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        //child: Image.asset('assets/right-arrow.png'),
                      ),
                    ),
                    Positioned(
                      top: 120,
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
                            "R E K O M E N D A S I",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        //child: Image.asset('assets/right-arrow.png'),
                      ),
                    ),
                    Positioned(
                      top: 190,
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
                                  builder: (context) => FavoritePage(),
                                ));
                          },
                          child: const Text(
                            "F A V O R I T",
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
