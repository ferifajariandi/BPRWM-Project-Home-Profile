import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/data/colors.dart';

import '../homepage.dart';

class KreditMusiman extends StatelessWidget {
  const KreditMusiman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kredit Musiman",
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
                            "Kredit Musiman",
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
                        Text("Kredit Musiman : Fasiltas pinjaman yang diberikan untuk segala kebutuhan usaha yang bersifat musiman")
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: [
                    Text("Keunggulan Kredit Musiman : ", style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 5),
                child: Row(
                  children: [
                    Text("* Suku bunga yang kompetitif\n"
                        "* Setiap bulan membayar angsuran bunga saja\n"
                        "* Persyaratan yang mudah & proses yang cepat\n"
                        "* Jangka waktu s/d 12 bulan\n"
                        "* Bisa diperpanjang\n"),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, top: 0),
                child: Row(
                  children: [
                    Text("Syarat dan Ketentuan : ", style: TextStyle(
                        fontWeight: FontWeight.bold
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
                          "* Fotocopy sertifikat & PBB terakhir apabila agunan rumah\n"
                          "* Bukti usaha untuk wiraswasta", textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 50, left: 30, right: 30,),
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 20, left: 120, right: 30,),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonRiplays(title: "Informasi Produk Layanan",),
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

class ButtonRiplays extends StatelessWidget {
  const ButtonRiplays({
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


