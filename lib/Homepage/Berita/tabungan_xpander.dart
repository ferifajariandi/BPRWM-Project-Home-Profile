import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../homepage.dart';

class TabunganXpander extends StatelessWidget {
  const TabunganXpander({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tabungan Xpander",
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
                child: Image.asset("assets/images/xpander.jpg"),
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
                            "Tabungan Xpander",
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
                        Text("Tamasha Xpander : Merupakan Tabungan Masyarakat berhadiah dengan hadiah utama berupa mobil Mitsubishi Xpander  dengan Paket Tabungan Kelompok Berjangka, berbunga sekaligus berhadiah setiap bulannya dengan Sistem diundi yang diselenggarakan oleh BPR WM dengan misi mensosialisasikan gemar menabung sambil menjalin kekeluargaan seluruh Keluarga Besar nasabah BPR WM.")
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width*2,
                  height: 2,
                  color: Colors.grey,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: [
                    Text("Keunggulan Tabungan Tamasha Expander yaitu :", style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 5, right: 10),
                child: Column(
                  children: [
                    Text("* Hadiah utama Granprize Mitsubishi Xpander, 2 unit sepeda motor dan uang tunai jutaan rupiah yang di undi pada bulan ke – 36\n"
                        "* Hadiah uang tunai dan hadiah hiburan yang diundi setiap bulannya\n"
                        "* Setiap kali pembukaan rekening Tamasha Xpander langsung mendapat 1 pc Tupperware Cannister\n"
                        "* Tamasha Xpander dapat dijadikan sebagai agunan / jaminan kredit.\n"
                        "* Tamasha Xpander bisa dipindah tangankan / dikuasakan kepada orang lain dengan persetujuan dan pengesahan dari BPR WM.\n"
                        "* Setiap Nasabah dapat membuka lebih dari satu rekening Tamasha Xpander\n"
                        "* Bagi setiap rekening dalam katagori lancar dalam setoran tiap bulannya dan belum mendapatkan hadiah tarikan sampai periode ke 36 akan mendapatkan bonus sebesar \nRp. 300.000,00", textAlign: TextAlign.left,
                    )],
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
                      Text("* Nasabah menyerahkan Fotocopy Identitas Diri (Fc. KTP/Fc. Pasport) dan mengisi formulir membuka rekening Tamasha Xpander di BPR WM / Petugas resmi BPR WM.\n"
                          "* Pengundian pemenang rutin setiap bulan dengan sistem gugur ( rekening yang dinyatakan sebagai pemenang undian tarikan secara otomatis tutup rekening).\n"
                          "* Nasabah yang membuka rekening Tabungan Tamasha Xpander wajib memiliki rekening tabungan makmur yang berfungsi sebagai sistem autodebet setoran Tamasha Xpander dan penampung jika nasabah mendapatkan hadian berupa uang tunai ataupun hadiah uang tarikan.\n"
                          "* Penabung wajib menabung dengan jumlah setoran per bulan yang nominalnya sebesar Rp. 350.000,00 setiap bulannya.\n"
                          "* Setoran selambat-lambatnya tanggal 10 pada setiap bulannya.\n", textAlign: TextAlign.justify,
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

