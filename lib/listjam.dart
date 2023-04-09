import 'package:flutter/material.dart';
import 'package:tugas4_tpm/datajam.dart';
import 'package:tugas4_tpm/detail.dart';

class ListJam extends StatelessWidget {
  const ListJam({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Daftar Rekomendasi Jam"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(18),
            height: size.height,
            width: size.width,
            child: ListView.builder(
              itemCount: listJam.length,
              itemBuilder: (BuildContext context, int index) {
                final DataJam jam = listJam[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailJam(jam: jam),
                        ));
                  },
                  child: Card(
                    elevation: 10, //shadow
                    child: Container(
                      height: size.height / 5,
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                                height: size.height / 5,
                                width: 110,
                                child: Image.network(
                                  jam.images,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return const Icon(
                                      Icons.person,
                                      size: 90,
                                    );
                                  },
                                )),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                jam.toko,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                maxLines: 1,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                jam.merk,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
