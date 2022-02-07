import 'package:flutter/material.dart';
import 'package:untitled/data/colors.dart';

import '../homepage.dart';

class PenempatanDeposito extends StatefulWidget {
  const PenempatanDeposito({Key? key}) : super(key: key);

  @override
  _PenempatanDepositoState createState() => _PenempatanDepositoState();
}

class _PenempatanDepositoState extends State<PenempatanDeposito> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Penempatan Deposito",
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
                        child: Text(
                          "Penempatan Deposito",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        margin: EdgeInsets.all(15),
                        // width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 2,
                              )
                            ],
                            color: Colors.grey[200]),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 10, 10, 10),
                                child: Row(
                                  children: [
                                    Text(
                                      "Nama Lengkap (*) : ",
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.4,
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.drive_file_rename_outline,
                                      color: Palette.textColor1,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Palette.textColor1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Palette.textColor1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    contentPadding: EdgeInsets.all(10),
                                    hintStyle: TextStyle(
                                      color: Palette.textColor1,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 14),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 27,
                                          ),
                                          child: Text("Alamat Domisili (*)"),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.4,
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.location_city,
                                      color: Palette.textColor1,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Palette.textColor1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Palette.textColor1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    contentPadding: EdgeInsets.all(30),
                                    hintStyle: TextStyle(
                                      color: Palette.textColor1,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          28, 15, 10, 10),
                                      child:
                                          Text("Kota tinggal / domisili (*) :"),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.4,
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.location_city_sharp,
                                      color: Palette.textColor1,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Palette.textColor1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Palette.textColor1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    contentPadding: EdgeInsets.all(10),
                                    hintStyle: TextStyle(
                                      color: Palette.textColor1,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          28, 15, 10, 10),
                                      child: Text(
                                          "Kecamatan tinggal / domisili (*) :"),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.4,
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.location_city_sharp,
                                      color: Palette.textColor1,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Palette.textColor1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Palette.textColor1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    contentPadding: EdgeInsets.all(10),
                                    hintStyle: TextStyle(
                                      color: Palette.textColor1,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          28, 15, 10, 10),
                                      child: Text("No. Telepon"),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.4,
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.phone,
                                      color: Palette.textColor1,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Palette.textColor1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Palette.textColor1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    contentPadding: EdgeInsets.all(10),
                                    hintStyle: TextStyle(
                                      color: Palette.textColor1,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 0),
                                            child: Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                        activeColor: Colors.green,
                                                        value: value,
                                                        onChanged: (value) =>
                                                            setState(() => this.value = value!)),
                                                    Column(
                                                      children: [
                                                        Text("Dengan ini saya menyatakan setuju bahwa :"),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Column(
                                            children: [
                                              Text("* Informasi Saya sebagaimana tersebut diatas dapat dipergunakan untuk keperluan penempatan deposito di BPR WM."),
                                              Text("* Ditegaskan bahwa pernyataan tersebut adalah benar, dan pihak PT. BPR Weleri Makmur dikuasakan untuk menyelidiki kebenarannya.")
                                            ],
                                          ),
                                        )
                                        


                                        //   Column(



                                        //   )
                                        // ],
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ButtonKirimHasil(
                                      title: "Kirim",
                                    ),
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
          onPressed: () {},
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
