import 'package:flutter/material.dart';
import 'package:untitled/data/colors.dart';

import '../homepage.dart';

class KreditEnamSembilanScreen extends StatelessWidget {
  const KreditEnamSembilanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kredit Enam Sembilan",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.grey[100],
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CarouselWithIndicatorDemo()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Image.asset("assets/images/kredit69.jpg"),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Kredit Enam Sembilan (69)", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("Kredit Enam Sembilan adalah Fasilitas pinjaman yang diberikan untuk segala kebutuhan / keperluan konsumtif ataupun produktif dengan bunga yang murah mulai 0,69 % per bulan",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 390,
                        height: 2,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 11, bottom: 10),
                            child: Text("Keunggulan Kredit Enam Sembilan :", style: TextStyle(fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                              Text("* Suku bunga yang ringan mulai dari 0.69 % per bulan\n"
                                  "* Sistem bunga flat murni\n"
                                  "* Persyaratan yang mudah & proses yang cepat\n"
                                  "* Plafon sampai dengan 5 Miliar untuk jaminan Sertifikat\n"
                                  "* Plafon sampai dengan 500 juta untuk jaminan BPKB\n"
                                  "* Dapat mengajukan Online tanpa perlu datang ke kantor",
                              ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 11, top: 10),
                            child: Text("Syarat dan Ketentuan :", style: TextStyle(fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 6),
                      child: Text("* Fotocopy KTP suami & istri\n"
                          "* Fotocopy KK & Fotocopy Surat Nikah\n"
                          "* Fotocopy BPKB & STNK apabila aguna mobil / motor\n"
                          "* Fotocopy sertifikat & PBB terakhir apabila agunan tanah\n"
                          "* Slip gaji terakhir untuk karyawan\n"
                          "* Bukti usaha untuk wiraswastar",
                        textAlign: TextAlign.justify,
                      ),
                    ),

                  ],
                ),
              ),
              GestureDetector(
                child: Row(
                  children: [
                    ButtonKirim69(title: 'Ajukan Kredit69',),
                    ButtonKirim69(title: 'Ringkasan Produk',),
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

class ButtonKirim69 extends StatelessWidget {
  const ButtonKirim69({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20,20,20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kPrimaryColor,
        ),
        width: 150,
        height: 40,
        child: TextButton(
          onPressed: (){},
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
