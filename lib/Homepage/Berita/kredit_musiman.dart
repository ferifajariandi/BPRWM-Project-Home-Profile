import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/data/colors.dart';

import '../homepage.dart';

class TabunganRencana extends StatelessWidget {
  const TabunganRencana({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tabungan Rencana",
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
                child: Image.asset("assets/images/rencana.jpg"),
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
                            "Tabungan Rencana",
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
                        Text("Tabungan Rencana :  Tabungan Rencana merupakan pilihan yang tepat dalam membantu perencanaan keuangan anda.")
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: [
                    Text("Keunggulan Tabungan Rencana yaitu : ", style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 5),
                child: Column(
                  children: [
                    Text("* Membantu anda dalam perencanaan keuangan anda.\n"
                        "* Pilihan setoran tabungan dapat anda tentukan sendiri.\n"
                        "* Banyaknya pilihan jangka waktu mulai dari 1 tahun s/d 10 tahun.\n"
                        "* Suku bunga simpanan tinggi.\n"
                        "* Dapat dijadikan sebagai agunan kredit\n"
                        "* Dijamin oleh LPS"),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
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
                      Text("* Fotocopy identitas (KTP/Passport)\n"
                          "* Mengisi dan menandatangani Aplikasi Pembukaan Rekening\n"
                          "* Fasilitas kartu Tabungan Rencana\n", textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 50, left: 120, right: 10,),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonRiplay(title: "Simulasi Perhitungan",)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20, left: 100, right: 30,),
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
      width: 210,
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


