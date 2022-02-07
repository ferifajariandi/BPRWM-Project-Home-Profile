import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/data/colors.dart';

import '../homepage.dart';

class KreditSerbaguna extends StatelessWidget {
  const KreditSerbaguna({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kredit Serbaguna",
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
          height: MediaQuery.of(context).size.width * 1.6,
          child: Column(
            children: [
              Center(
                child: Image.asset("assets/images/kredit_serbaguna.jpg"),
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
                            "Kredit Serbaguna",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15),
                        child: Column(
                          children: [
                            Text("Kredit Serbaguna : Fasilitas pinjaman yang diberikan untuk segala kebutuhan / keperluan konsumtif ataupun produktif")
                          ],
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Row(
                      children: [
                        Text("Keunggulan Kredit Serbaguna : ", style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 5),
                    child: Row(
                      children: [
                        Text("* Suku bunga yang kompetitif\n"
                            "* Angsuran perbulan yang ringan\n"
                            "* Sistem bunga flat murni\n"
                            "* Persyaratan yang mudah & proses yang cepat\n"
                            "* Pelunasan lebih awal tanpa dikenakan penalty\n"
                            "* Satu hari cair untuk pengajuan dibawah 50 Juta (Kredit Kilat)")
                      ],
                    ),
                  ),

              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: [
                    Text("Agunan : ", style: TextStyle(
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
                        "* Mobil/Motor"),
                  ],
                ),
              ),



                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
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
                              "* Fotocopy sertifikat & PBB terakhir apabila agunan rumah\n"
                              "* Slip gaji terakhir untuk karyawan\n"
                              "* Bukti usaha untuk wiraswasta", textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),

              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: [
                    Text("Syarat dan Ketentuan Kredit Kilat: ", style: TextStyle(
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
                          "* Fotocopy sertifikat & PBB terakhir apabila agunan rumah\n", textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),

                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30,),
                    child: GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                              ButtonRiplay(title: "Ajukan Kredit",),
                              ButtonRiplay(title: "Lihat Brosur",)
                            ],
                          ),
                      ),
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
    return Container(
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
      );
  }
}

