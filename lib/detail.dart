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

  Future<void> goToWebPage(String urlString) async {
    final Uri _url = Uri.parse(urlString);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xfff0f1f5),
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
            backgroundColor: Colors.black),
        body: Center(
          child: Container(
          padding: const EdgeInsets.all(18),
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: size.width,
                height: size.height * 0.35,
                child: Image.network(widget.jam.images),
              ),
              Card(
                child: Container(
                  height: 270,
                  width: 430,
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
                            "Toko                      : " + widget.jam.toko,
                            style: TextStyle(fontSize: 16),
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Merk                      : " + widget.jam.merk,
                            style: TextStyle(fontSize: 16),
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Panjang                : " + widget.jam.panjang,
                            style: TextStyle(fontSize: 16),
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Lebar                     : " +
                                widget.jam.lebar.toString(),
                            style: TextStyle(fontSize: 16),
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Diameter              : " + widget.jam.diameter,
                            style: TextStyle(fontSize: 16),
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Harga                    : " +
                                widget.jam.harga.toString(),
                            style: TextStyle(fontSize: 16),
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
