import 'package:flutter/material.dart';
import 'package:tugas4_tpm/datajam.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailJam extends StatefulWidget {
  final DataJam jam;
  const DetailJam({Key? key, required this.jam}) : super(key: key);

  @override
  State<DetailJam> createState() => _DetailJamState();
}

class _DetailJamState extends State<DetailJam> {
  final Uri _url = Uri.parse('https://flutter.dev');
  //
  String ketersediaan = "Tersedia";
  var warna = Colors.green;
  statusbutton() {
    if (widget.jam.isAvailable == false) {
      return null;
    } else {
      return () {
        String text = " ";
        if (widget.jam.isAvailable == true) {
          setState(() {
            text = "Berhasil Meminjam Buku!";
            ketersediaan = "Tidak Tersedia";
            warna = Colors.red;
            widget.jam.isAvailable= !widget.jam.isAvailable;
          });
        }
        SnackBar snackBar = SnackBar(content: Text(text), backgroundColor: Colors.green,);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      };
    }
  }

  Future<void> goToWebPage(String urlString) async {
    final Uri _url = Uri.parse(urlString);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${widget.jam.merk}"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () async {
                  await goToWebPage(widget.jam.link);
                },
                icon: Icon(Icons.search, color: Colors.white)),
          ],
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 220,
                width: 270,
                padding: const EdgeInsets.all(20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.network(widget.jam.images),
                  ],
                ),
              ),
              Card(
                child: Container(
                  height: 200,
                  width: 700,
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      //biar bertingkat diberi column
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Judul                      : " + widget.jam.toko,
                            style: TextStyle(fontSize: 16),
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Penulis                   : " + widget.jam.merk,
                            style: TextStyle(fontSize: 16),
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Bahasa                   : " +
                                widget.jam.panjang,
                            style: TextStyle(fontSize: 16),
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Negara                   : " + widget.jam.diameter,
                            style: TextStyle(fontSize: 16),
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Jumlah Halaman : " + widget.jam.harga.toString(),
                            style: TextStyle(fontSize: 16),
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Tahun Terbit         : " +
                                widget.jam.lebar.toString(),
                            style: TextStyle(fontSize: 16),
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Status                   : ' + ketersediaan,
                            style: TextStyle(fontSize: 16, color: warna),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  height: 35,
                  width: 700,
                  padding: const EdgeInsets.all(5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(20),
                    ),
                    onPressed: statusbutton(),
                    child: const Text('Pinjam Buku'),
                  ),
                ),
            ],
          ),
        ));
  }
}
