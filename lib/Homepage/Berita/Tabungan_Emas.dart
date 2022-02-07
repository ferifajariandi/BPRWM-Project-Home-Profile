import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/data/colors.dart';

import '../homepage.dart';

class TabunganEmas extends StatelessWidget {
  const TabunganEmas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tabungan Bisnis",
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
                child: Image.asset("assets/images/bisnis.jpg"),
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
                            "Tabungan Bisnis",
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
                        Text("Tabungan Bisnis: Produk tabungan untuk pebisnis dengan banyak kemudahan bertransaksi dan bunga tinggi")
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: [
                    Text("Keunggulan Tabungan Bisnis yaitu :", style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 5, right: 10),
                child: Column(
                  children: [
                    Text("* Suku bunga yang tinggi\n"
                        "* Aman, karena dijamin Lembaga Penjamin Simpanan (LPS)\n"
                        "* Bebas biaya administrasi bulanan\n"
                        "* Perolehan bonus/reward berupa poin yang dapat ditukarkan dengan voucher belanja\n"
                        "* Kemudahan bertransaksi\n"
                        "* Layanan cek saldo & transfer dana secara Online")
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
                      Text("* Fotocopy identitas (KTP/passport) untuk nasabah perorangan\n"
                          "* Fotocopy identitas pengurus/Direksi, SIUP, TDP, NPWP, Akte pendirian dan kelengkapan perusahaan lainnya untuk nasabah Berbadan Hukum\n"
                          "* Mengisi dan menandatangani aplikasi pembukaan rekening\n"
                          "* Setoran awal Rp. 10.000.000,- (untuk pembukaan rekening)\n"
                          "* Bunga dikenakan pajak sesuai ketentuan yang berlaku\n", textAlign: TextAlign.left,
                      ),
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

