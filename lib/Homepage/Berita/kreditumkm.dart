import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/data/colors.dart';

import '../homepage.dart';

class KreditUmkmScreen extends StatelessWidget {
  const KreditUmkmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kredit UMKM",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.grey[100],
        leading: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CarouselWithIndicatorDemo()));
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
              Center(child: Image.asset("assets/images/umkm.png"),
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
                            "Kredit UMKM",style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20,2,10,10),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/4,
                                  child: Text("Kredit UMKM :", style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Text(" Fasilitas pinjaman yang diberikan untuk \n kebutuhan usaha dengan plafon mulai \n dari Rp 15.000.000,"),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 380,
                            height: 2,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20,2,20,10),
                                child: Text("Keunggulan Kredit UMKM",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 16
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20,2,10,20),
                                child: Text("1. Suku bunga yang ringan\n"
                                    "2. Persyaratan yang mudah & proses yang cepat\n"
                                    "3. Jangka waktu s/d 3 tahun"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20,0,10,10),
                                child: Text("Agunan :", style: TextStyle(
                                  decoration: TextDecoration.underline
                                ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text("* Rumah/tanah\n"
                                    "* Mobil/motor"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20, top: 10),
                                child: Text("Syarat dan Ketentuan", style: TextStyle(
                                  decoration: TextDecoration.underline
                                ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20, top: 10),
                                child: Text("1. Fotocopy KTP suami & istri\n"
                                    "2. Fotocopy KK & Fotocopy Surat Nikah\n"
                                    "3. Fotocopy BPKB & STNK apabila aguna mobil / motor\n"
                                    "4. Fotocopy sertifikat & PBB terakhir apabila agunan \n    rumah / tanah\n"
                                    "5. Mempunyai usaha yang jelas dan melampirkan data \n    pendukung usaha",
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: GestureDetector(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ButtonPengajuan(title: "Ajukan Kredit",),
                                ButtonPengajuan(title: "Lihat Brosur",),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          // Container awal
        ),
      ),
    );
  }
}

class ButtonPengajuan extends StatelessWidget {
  const ButtonPengajuan({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kPrimaryColor,
      ),
      child: TextButton(
        onPressed: (){

        },
        child: Text(
          title, style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        )
      ),
    );
  }
}

