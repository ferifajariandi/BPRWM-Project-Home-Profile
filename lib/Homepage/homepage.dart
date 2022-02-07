import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:untitled/Homepage/ContainerBerita.dart';
import 'package:untitled/data/colors.dart';

import 'Berita/TabunganMakmur.dart';
import 'Berita/Tabungan_Emas.dart';
import 'Berita/Tabungan_rencana.dart';
import 'Berita/cicilemas.dart';
import 'Berita/deposito.dart';
import 'Berita/hitungkredit.dart';
import 'Berita/kredit69.dart';
import 'Berita/kredit_instan.dart';
import 'Berita/kredit_musiman.dart';
import 'Berita/kredit_serbaguna.dart';
import 'Berita/kreditumkm.dart';
import 'Berita/penempatan_deposito.dart';
import 'Berita/pengajuan_kredit.dart';
import 'Berita/tabungan_smart.dart';
import 'Berita/tabungan_xpander.dart';
import 'Berita/tamasha_emas.dart';
import 'HamburgerBar/hamburger_bar.dart';

//uji coba 2
class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}



class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {



  int _current = 0;
  int _selectedItemIndex = 0;

  //Homebar bawah
  final CarouselController _controller = CarouselController();


  final List<Widget> myData = [
    //Image Sliderr
    Container(
      child: Image.asset(
        'assets/images/tgl.png',
        width: 1900,
        height: 1,
      ),
    ),
    Container(
      child: Image.asset(
        'assets/images/kilat.png',
        width: 1900,
        height: 900,
      ),
    ),
    Container(
      child: Image.asset(
        'assets/images/ketiga.png',
        width: 1900,
        height: 900,
      ),
    ),
    Container(
      child: Image.asset(
        'assets/images/keempat.png',
        width: 1900,
        height: 900,
      ),
    ),
    Container(
      child: Image.asset(
        'assets/images/kilats.png',
        width: 1900,
        height: 900,
      ),
    ),
  ];

  //Homebar Button
  @override
  Widget build(BuildContext context) {
    //screen width dan height
    return Scaffold(
      // bottomNavigationBar: Row(
      //   children: [
      //     buildNavBarItem(Icons.home, 0),
      //     buildNavBarItem(Icons.email, 1),
      //     buildNavBarItem(Icons.notifications, 2),
      //     buildNavBarItem(Icons.account_circle_rounded, 3),
      //   ],
      // ),
      backgroundColor: Colors.grey[200],
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: myData,
              carouselController: _controller,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 1.9,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),

            // Kalau pengen pake shadow pada container
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 60,
                    spreadRadius: 35,
                  )
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: myData.asMap().entries.map(
                (entry) {
                  return Container(
                    child: GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        //atur container slider awal
                        margin: EdgeInsets.symmetric(
                          horizontal: 5.0,
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),

            // mengatur tinggi padding pada tombol menu dan container bawah
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width / 4.3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CicilEmasScreen()));
                          });
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 13),
                          child: ItemKategori(
                            title: "Cicil Emas",
                            icon: "assets/icons/gold.png",
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const KreditUmkmScreen()));
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 13),
                          child: ItemKategori(
                            title: "Kredit UMKM",
                            icon: "assets/icons/kredit.png",
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(primary: Colors.black),
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HitungKreditScreen()));
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 13),
                          child: ItemKategori(
                            title: "Hitung Kredit",
                            icon: "assets/icons/calculator.png",
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const KreditEnamSembilanScreen()));
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 13),
                          child: ItemKategori(
                            title: "Kredit 69",
                            icon: "assets/icons/kredit69.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),






            // Button ICON CONTAINER KE 2
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 4,
              color: Colors.white,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const DepositoScreen()));
                        });
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: ItemKategori(
                          title: "Deposito\nMakmur",
                          icon: "assets/icons/deposito.png",
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const TabunganMakmurScreen()));
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: ItemKategori(
                          title: "Tabungan \nMakmur",
                          icon: "assets/icons/tabungan.png",
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.black),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const PengajuanKredit()));
                        });
                      },
                      child: ItemKategori(
                        title: "Pengajuan \nKredit",
                        icon: "assets/icons/pengajuan.png",
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.black),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const KreditSerbaguna()));
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: ItemKategori(
                          title: "Kredit\nSerbaguna",
                          icon: "assets/icons/kreditser.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),


            //akhir container button icons ke 2


            //Awal Container button icons 3
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 4,
              color: Colors.white,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const TabunganEmas()));
                        });
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: ItemKategori(
                          title: "Tabungan\nBisnis",
                          icon: "assets/icons/bisnis.png",
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const TamashaEmas()));
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: ItemKategori(
                          title: "Tamasha \nEmas",
                          icon: "assets/icons/emas.png",
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.black),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const PenempatanDeposito()));
                        });
                      },
                      child: ItemKategori(
                        title: "Penempatan \nDeposito",
                        icon: "assets/icons/lokasiuang.png",
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.black),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TabunganXpander()));
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: ItemKategori(
                          title: "Tamasha\nXpander",
                          icon: "assets/icons/xpanderr.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Akhir COntainer button icons 3




            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 4,
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const KreditMusiman()));
                        });
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: ItemKategori(
                          title: "Kredit\nMusiman",
                          icon: "assets/icons/serbaguna.png",
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const TabunganRencana()));
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: ItemKategori(
                          title: "Tabungan\nRencana",
                          icon: "assets/icons/rencana.png",
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.black),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const KreditInstan()));
                        });
                      },
                      child: ItemKategori(
                        title: "Kredit \nInstant",
                        icon: "assets/icons/instan.png",
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.black),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TabunganSmart()));
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: ItemKategori(
                          title: "Tabungan\nSmart",
                          icon: "assets/icons/smart.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //jarak anatara menu icons dan suku bunga
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Suku Bunga Deposito",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Jangka Waktu",
                              style: TextStyle(
                                color: Palette.facebookColor,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "Bunga Per Tahun",
                              style: TextStyle(
                                color: Palette.facebookColor,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "1 Bulan",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "4,50%",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "3 Bulan",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "4,75%",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "6 Bulan",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "5,25%",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "12 Bulan",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "5,50%",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "24 Bulan",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "6,50%",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "36 Bulan",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "7,00%",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "60 Bulan",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "8,25%",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // decoration: BoxDecoration(
                  //   color: Colors.white,
                  //   boxShadow: [
                  //     BoxShadow(
                  //         spreadRadius: 1,
                  //         offset: const Offset(
                  //           3,
                  //           1,
                  //         ),
                  //         blurRadius: 5,
                  //         color: Colors.grey)
                  //   ],
                  // borderRadius: BorderRadius.only(topLeft:Radius.circular(15), topRight: Radius.circular(15)),
                  //  Kalau mau pake border radius pada container
                ),
              ),
            ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.width/1.7,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              // Padding(
                              //   padding: const EdgeInsets.all(8),
                              //   child: Text("Berita Terkini",style: TextStyle(
                              //     fontWeight: FontWeight.bold, fontSize: 18,
                              //   ),
                              //   ),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ContainerBerita(textJudul: "Daftar Pemenang Undian TAMASHA Bulan Januari \n2022\n", textTanggal: "17-01-2022", imageBox: "assets/images/tamasha.png",),
                    ContainerBerita(textJudul: "Pengumuman Perubahan Hari dan Jam Kerja Operasional", textTanggal: "29-12-2021", imageBox: "assets/images/pengumuman.jpg",),
                    ContainerBerita(textJudul: "Daftar Pemenang Undian TAMASHA Bulan Desember 2021", textTanggal: "16-12-2022", imageBox: "assets/images/tamasha.png",),
                    ContainerBerita(textJudul: "Jangka Waktu Lebih Panjang, Bunga Tetap Murah", textTanggal: "14-10-2021", imageBox: "assets/images/jangka.jpg",),
                    ContainerBerita(textJudul: "Peningkatan Kualitas layanan website klikwm.com", textTanggal: "19-11-2021", imageBox: "assets/images/perbaikan.jpg",),
                    ContainerBerita(textJudul: "Hindari Kredit Macet Saat Kondisi Sulit di BPRWM\n", textTanggal: "13-10-2021", imageBox: "assets/images/kreditmacet.jpg",),
                    ContainerBerita(textJudul: "Emas, Investasi Favorit Sepanjang Masa\n", textTanggal: "08-10-2021", imageBox: "assets/images/emas_investasi.jpg",),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width/3.6,
                color: Colors.white,
                child: Column(
                  children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 10),
                         child: Text(
                          "Info Mengenai BPRWM",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                      ),
                       ),
                Container(
                  margin: EdgeInsets.only(left: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/ojk.png", width: 130,),
                      Image.asset("assets/images/lps.png", width: 110, height: 60,),
                      Image.asset("assets/images/mhn.png", width: 80,),
                      Image.asset("assets/images/wm.png", width: 40,),
                    ],
                  ),
                ),

                    // Versi 2 lambang
                    // Container(
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //     children: [
                    //       Image.asset("assets/images/mhn.png", width: 90,),
                    //       Image.asset("assets/images/wm.png", width: 40,),
                    //     ],
                    //   ),
                    // )




                    //

















                    //Kalau mau versi slider pada footer
                    // CarouselSlider(
                    //   options:
                    //   CarouselOptions(height: 100.0, aspectRatio: 50 / 17),
                    //   items: [
                    //     "assets/images/bprwms.jpg",
                    //     "assets/images/cobaa.jpg",
                    //     "assets/images/lps.jpg",
                    //     "assets/images/wms.jpg",
                    //   ].map((i) {
                    //     return Builder(
                    //       builder: (BuildContext context) {
                    //         return ClipRRect(
                    //           borderRadius: BorderRadius.circular(10),
                    //           child: Container(child: Image.asset(i)),
                    //         );
                    //       },
                    //     );
                    //   }).toList(),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width / 4,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 4,
                    color: Colors.blue,
                  ),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.3),
                    Colors.blue.withOpacity(0.015),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              )
            : BoxDecoration(),
        // color: index == _selectedItemIndex ? Colors.blue : Colors.white,
        child: Icon(
          icon,
          color: index == _selectedItemIndex ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}

class ItemKategori extends StatelessWidget {
  const ItemKategori({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: MediaQuery.of(context).size.width/ 5.5,
          height: MediaQuery.of(context).size.width / 8.5,
          child: Image.asset(icon),
        ),
        SizedBox(
          height: 2,
        ),
        Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}
