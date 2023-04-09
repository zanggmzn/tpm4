import 'package:flutter/material.dart';
import 'package:tugas4_tpm/detail.dart';
import 'datajam.dart';
import 'favorite.dart';


class ListJam extends StatefulWidget {
  const ListJam({Key? key}) : super(key: key);

  @override
  _ListJamState createState() => _ListJamState();
}

class _ListJamState extends State<ListJam> {
  bool isFavorite = false;

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
                      height: size.height / 7,
                      padding: const EdgeInsets.all(12),
                      child: ListTile(
                        leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
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
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                            ),
                            maxLines: 1,
                          ),
                          trailing: IconButton(
                            icon: listJam[index].favorite
                                    ? Icon(Icons.favorite, color: Colors.red,) 
                                    : Icon(Icons.favorite_border),
                            onPressed: () {
                                      setState(() {
                                        if (listJam[index].favorite == false) {
                                          listJam[index].favorite = true;
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(
                                              content:
                                                  Text('Ditambahkan Ke Favorite'),
                                              backgroundColor: Colors.blue,
                                              duration: Duration(
                                                seconds: 1,
                                              ),
                                            ),
                                          );
                                        } else {
                                          listJam[index].favorite = false;
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                'Dihapus Dari Favorite',
                                              ),
                                              backgroundColor: Colors.red,
                                              duration: Duration(
                                                seconds: 1,
                                              ),
                                            ),
                                          );
                                        }
                                      });
                                  },
                                ),
                          
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
