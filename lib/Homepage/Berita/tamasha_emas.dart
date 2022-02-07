import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/data/colors.dart';

import '../homepage.dart';

class TamashaEmas extends StatelessWidget {
  const TamashaEmas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tamasha Emas",
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
                child: Image.asset("assets/images/tamashaemas.png"),
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
                            "Tamasha Emas",
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
                        Text("Tamasha Emas : Merupakan Tabungan Masyarakat berhadiah dengan hadiah Emas Antam, dengan total sebanyak 100 keping Emas Antam dan hadiah hiburan total senilai jutaan rupiah. Dengan Sistem undian yang diselenggarakan oleh BPR WM setiap bulannya.", textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Row(
                      children: [
                        Text("Keunggulan Tamasha Emas yaitu: : ", style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 5, right: 15),
                    child: Column(
                      children: [
                        Text("* Total hadiah tarikan berupa Emas Antam sebanyak 100 keping Emas\n"
                            "* Rincian keping emas : 94 keping emas 1 gr, 3 keping emas 5 gr, 2 keping emas 10 gr, 1 keping emas 25 gr.\n"
                            "* Hadiah hiburan senilai jutaan rupiah yang diundi setiap bulannya\n"
                            "* Setiap kali pembukaan rekening Tamasha Emas langsung mendapat 1 pc Tupperware Eco Bottle 500 ml.\n"
                            "* Tamasha Emas dapat dijadikan sebagai agunan / jaminan kredit.\n"
                            "* Tamasha Emas bisa dipindah tangankan / dikuasakan kepada orang lain dengan persetujuan dan pengesahan dari BPR WM.\n"
                            "* Setiap Nasabah dapat membuka lebih dari satu rekening Tamasha Emas\n"
                            "* Bagi setiap rekening dalam katagori lancar dalam setoran tiap bulannya dan belum mendapatkan hadiah tarikan sampai periode ke 36 akan mendapatkan bonus sebesar Rp. 200.000,00",
                        textAlign: TextAlign.justify,)
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
                          Text("* Nasabah menyerahkan Fotocopy Identitas Diri (Fc. KTP/Fc. Pasport) dan mengisi formulir membuka rekening Tamasha Emas di BPR WM / Petugas resmi BPR WM.\n"
                              "* Penabung wajib menabung dengan jumlah setoran rutin per bulan yang nominalnya sebesar Rp. 200.000,00 setiap bulannya selama 36 bulan\n"
                              "* Setoran selambat-lambatnya tanggal 10 pada setiap bulannya agar dapat mengikuti undian bulanannya.\n"
                              "* Pengundian pemenang rutin setiap bulan dengan sistem gugur ( rekening yang dinyatakan sebagai pemenang undian tarikan secara otomatis tutup rekening).\n"
                              "* Nasabah yang membuka rekening Tabungan Tamasha Emas wajib memiliki rekening tabungan makmur yang berfungsi sebagai sistem autodebet setoran Tamasha Emas dan penampung jika nasabah mendapatkan hadian berupa uang tunai\n"
                              "* Nasabah yang selama 3 bulan atau lebih tidak memenuhi kewajiban dikelompokan sebagai tabungan pasif.\n"
                              , textAlign: TextAlign.justify,
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
      padding: const EdgeInsets.fromLTRB(20, 10,20,20),
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
