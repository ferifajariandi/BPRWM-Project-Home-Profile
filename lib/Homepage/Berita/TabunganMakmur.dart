import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/data/colors.dart';

import '../homepage.dart';

class TabunganMakmurScreen extends StatelessWidget {
  const TabunganMakmurScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tabungan Makmur",
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
                            "Tabungan Makmur",
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
                        Text("Tabungan Makmur : Pilihan investasi yang fleksibel dalam bentuk simpanan dana konvensional, aman dan menguntungkan untuk kebutuhan transaksi", textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Row(
                      children: [
                        Text("Keunggulan tabungan makmur yaitu : ", style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 5),
                    child: Row(
                      children: [
                        Text("* Suku bunga yang menarik\n"
                            "* Bunga yang dihitung atas saldo harian\n"
                            "* Bebas biaya administrasi bulanan\n"
                            "* Aman, karena simpanan dijamin oleh Lembaga Penjamin")
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
                          Text("* Fotocopy identitas (KTP/passport) untuk perorangan\n"
                              "* Fotocopy identitas pengurus/direksi, SIUP, TDP, NPWP, Akte pendirian dan kelengkapan perusahaan lainnya untuk nasabah Berbadan Hukum\n"
                              "* Mengisi dan menandatangani Aplikasi Pembukaan Rekening\n"
                              "* Setoran awal minimal Rp. 25.000,- (untuk pembukaan rekening)\n"
                              "* Setoran selanjutnya minimal Rp. 10.000,-\n"
                              "* Saldo mengendap adalah Rp. 25.000,-\n"
                              "* Fasilitas buku tabungan", textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Column(
                      children: [
                        ButtonRiplay(title: "Ringkasan Informasi Produk",)
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
