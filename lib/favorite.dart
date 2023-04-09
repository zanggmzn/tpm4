import 'package:flutter/material.dart';
import 'package:tugas4_tpm/listjam.dart';
import 'datajam.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Halaman Favorit"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(18),
            height: size.height,
            width: size.width,
            child: ListView.builder(
            itemCount: listJam
              .where((element) => element.favorite == true)
              .toList()
              .length,
            itemBuilder: (context, index) {
                List list =
                    listJam.where((element) => element.favorite == true).toList();
                DataJam jam = list[index];
                return InkWell(
                  child: Card(
                    elevation: 10, //shadow
                    child: Container(
                      height: size.height / 7,
                      padding: const EdgeInsets.all(12),
                      child: ListTile(
                        leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                height: size.height / 7,
                                width: 70,
                                jam.images,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return const Icon(
                                    Icons.person,
                                    size: 90,
                                  );
                                },
                          )),
                          title: Text(
                            jam.toko,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                                maxLines: 1,
                            ),
                          subtitle: Text(
                            jam.merk,
                            style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                            ),
                          ),
                      ),
                    ),
                  ),
                );
              }
            ),
          ),
        ),
    );    
  }
}