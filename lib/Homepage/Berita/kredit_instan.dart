import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/data/colors.dart';

import '../homepage.dart';

class KreditInstan extends StatelessWidget {
  const KreditInstan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kredit Instant",
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
              Center(
                child: Image.asset("assets/images/tabungan_makmur.jpg"),
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Kredit Instant",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
                    child: Column(
                      children: [
                        Text("Kredit Instan : Fasiltas pinjaman yang diberikan sebagai dana talangan untuk usaha", textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Row(
                      children: [
                        Text("Keunggulan Instant yaitu : ", style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 5),
                    child: Row(
                      children: [
                        Text("* Suku bunga yang ringan\n"
                            "* Bunga harian berdasarkan plafon pinjaman\n"
                            "* Jangka waktu pendek s/d 120 hari\n"
                            "* Persyaratan yang mudah & proses yang cepat")
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Row(
                      children: [
                        Text(" Agunan : ", style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 5),
                    child: Row(
                      children: [
                        Text("* Rumah/tanah\n"
                            "* Mobil/motor\n")
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 0),
                    child: Row(
                      children: [
                        Text("Syarat dan Ketentuan : ", style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 5, right: 15),
                    child: Container(
                      child: Column(
                        children: [
                          Text("* Fotocopy KTP suami & istri\n"
                              "* Fotocopy KK & Fotocopy Surat Nikah\n"
                              "* Fotocopy BPKB & STNK apabila aguna mobil / motor\n"
                              "* Fotocopy sertifikat & PBB terakhir apabila agunan rumah / tanah\n"
                              "* Bukti usaha untuk wiraswasta\n"
                              "* Cover check / Giro untuk pelunasan\n",textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Column(
                      children: [
                        ButtonRiplay(title: "Ajukan Kredit Sekarang",)
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonRiplay extends StatelessWidget {
  const ButtonRiplay({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 35,20,20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kPrimaryColor,
        ),
        width: 170,
        height: 40,
        child: TextButton(
          onPressed: (){},
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
