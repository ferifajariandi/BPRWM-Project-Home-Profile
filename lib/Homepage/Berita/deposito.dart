import 'package:flutter/material.dart';
import 'package:untitled/data/colors.dart';

import '../homepage.dart';

class DepositoScreen extends StatelessWidget {
  const DepositoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Deposito Makmur",
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
                Image.asset("assets/images/deposito.jpg",),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
                child: Text("Deposito Makmur", style: TextStyle(
                  fontSize: 18,
              fontWeight: FontWeight.bold,
          ),
         ),
        ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Deposito Makmur : Cara cerdas untuk tumbuh & kembangkan dana Anda secara maksimal dalam bentuk Simpanan Berjangka",
              textAlign: TextAlign.justify,
            ),
          ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 11, bottom: 10),
                    child: Text("Keunggulan Deposito Makmur :", style: TextStyle(fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("* Suku bunga yang menarik\n"
                  "* Aman, karena simpanan dijamin oleh Lembaga Penjamin Simpanan (LPS)\n"
                  "* Minimal penempatan Rp. 8.000.000,-\n"
                  "* Penarikan bunga yang fleksibel\n"
                  "* Bisa dijadikan sebagai agunan kredit\n"
                  "* ARO\n"
                  "* Jangka waktu 1 bulan, 3 bulan, 6 bulan, 12 bulan, 24 bulan, 36 bulan, 60 bulan",
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 11, top: 10),
                    child: Text("Syarat dan Ketentuan :", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("* Fotocopy identitas (KTP/Passport) untuk perorangan\n"
                  "* Fotocopy identitas pengurus/direksi, SIUP, TDP, NPWP, Akte pendirian dan kelengkapan perusahaan lainnya untuk nasabah Berbadan Hukum)\n"
                  "* Mengisi dan menandatangani Aplikasi Pembukaan Rekening\n",
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
                  GestureDetector(
                    child: Row(
                      children: [
                        ButtonDeposito(title: 'Isi Aplikasi',),
                        ButtonDeposito(title: 'Ringkasan Produk',)
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

class ButtonDeposito extends StatelessWidget {
  const ButtonDeposito({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 20,20,20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kPrimaryColor,
        ),
        width: 140,
        height: 40,
        child: TextButton(
          onPressed: (){},
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}
