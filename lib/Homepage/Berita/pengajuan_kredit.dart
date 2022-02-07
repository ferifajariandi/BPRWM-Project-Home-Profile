import 'package:flutter/material.dart';
import 'package:untitled/data/colors.dart';

import '../homepage.dart';

class PengajuanKredit extends StatefulWidget {
  const PengajuanKredit ({Key? key}) : super(key: key);

  @override
  _PengajuanKreditState createState() => _PengajuanKreditState();
}

class _PengajuanKreditState extends State<PengajuanKredit> {
  final items = [' Kendaraan (BPKB)',' Tanah (SHM/SHGB)','Tabungan di BPR WM (Tamasha/Rencana/Smart/Smart Pro','Deposito di BPR WM'];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pengajuan Kredit",
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
              Image.asset("assets/images/pengajuan.jpg"),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        child: Text("Pengajuan Kredit", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        margin: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 2,
                              )
                            ],
                            color: Colors.grey[200]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(30,10,10,10),
                                child: Row(
                                  children: [
                                    Text(
                                      "Plafond : ",
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width/1.4,
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.calculate,
                                      color: Palette.textColor1,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Palette.textColor1),
                                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Palette.textColor1),
                                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                                    ),
                                    contentPadding: EdgeInsets.all(10),
                                    hintText: "Masukan Jumlah Plafon (RP)",
                                    hintStyle: TextStyle(
                                      color: Palette.textColor1,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 11, vertical: 14),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15,
                                          bottom: 10),
                                          child: Text("Jaminan"),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width/1.4,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Palette.textColor1, width: 1),
                                        color: Colors.grey[200],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton<String>(
                                            value: value,
                                            iconSize: 36,
                                            isExpanded: true,
                                            items: items.map(buildMenuItem).toList(),
                                            onChanged: (value) => setState(() => this.value = value),
                                          ),
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
                                      padding: const EdgeInsets.fromLTRB(28,0,10,10),
                                      child: Text("Jangka Waktu :"),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width/1.4,
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.date_range,
                                      color: Palette.textColor1,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Palette.textColor1),
                                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Palette.textColor1),
                                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                                    ),
                                    contentPadding: EdgeInsets.all(10),
                                    hintText: "Berapa Bulan",
                                    hintStyle: TextStyle(
                                      color: Palette.textColor1,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ButtonKirimHasil(title: "Hitung",),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
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

class ButtonKirimHasil extends StatelessWidget {
  const ButtonKirimHasil({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
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
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}

DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
  value: item,
  child: Text(
    item,
  ),
);