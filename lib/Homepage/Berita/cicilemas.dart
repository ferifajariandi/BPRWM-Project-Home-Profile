import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../homepage.dart';

class CicilEmasScreen extends StatelessWidget {
  const CicilEmasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cicil Emas",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.grey[100],
        leading: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CarouselWithIndicatorDemo()));
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
                child: Image.asset("assets/images/keempat.png"),
              ),
              Column(children: [
                Container(
                    color: Colors.grey[100],
                    width: MediaQuery.of(context).size.width,
                    child: (Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Cicil Emas",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                    "Kredit pemilikan emas dari  atau Cicil Emas BPR WM adalah Kredit angsuran "
                                    "untuk memiliki investasi emas batangan/lantakan, yang barang emas tersebut ditempatkan dalam penguasaaan dan "
                                    "pemeliharaan BPR WM sebagai agunan kredit, cicili emas ini diharapkan bisa membantu masyarakat untuk dapat mewujudkan investasi Emas."),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                        "Dengan mengikuti program ini masyarakat dapat memiliki emas Antam saat ini juga namun pembayarannya dapat di cicil dengan jangka waktu yang dapat dipilih"),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Text(
                                            "Keunggulan Cicil Emas BPR WM"),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Text(
                                            "1. Emas batangan langsung dapat dimiliki saat itu namun bayarnya jadi ringan karena cicilan\n"
                                            "2. Cicilan ringan dengan bunga 0,69 % per bulan flat murni\n"
                                            "3. Jangka waktu cicilan sampai dengan 5 tahun\n"
                                            "4. Emas dapat dijadikan alternatif investasi yang aman\n"
                                            "5. Emas batangan asli produksi PT Aneka Tambang (Antam)"),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text("Ketentuan Cicil Emas di BPR WM seperti ini ya Mitra WM: \n"
                                    "- WNI berdomisili di wilayah kerja BPR WM\n"
                                    "- Calon debitur tidak dalam pengampuan dan memenuhi syarat sah perjanjian kredit sesuai undang-undang\n"
                                    "- Foto copy KTP, KK, Surat Nikah (apabila sudah menikah)\n"
                                    "- Suku bunga 0,69 % per bulan flat murni\n"
                                    "- Jangka waktu sampai dengan 5 tahun\n"
                                    "- Provinsi sebesar 0,5 % dari plafon kredit untuk jangka waktu sampai dengan 36 bulan, atau sebesar 1 % dari plafon kredit untuk jangka waktu lebih dari 36 bulan\n"
                                    "- Uang muka minimal 20 % dari harga emas.\n"
                                    "- Uang muka dan biaya lainnya dibayar di muka dengan setor ke Tabungan Makmur milik nasabah yang bersangkutan\n"
                                    "- Berat emas yang dapat dicicil antara lain 10 gram, 25 gram, 50 gram, 100 gram, 250 gram, 500 gram, 1 Kg atau kombinasi/kelipatan dari pecahan gram tersebut\n"
                                    "- Jika nasabah melakukan pembatalan setelah emas dibelanjakan maka akan dikenakan denda sebesar 10% dari harga beli emas",
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              //
                        //       //
                        //       // ),

                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text("Gimana menarik kan?\n"
                                          "yuk segera miliki emas batangan dengan Cicil Emas BPRWM."),
                                    ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Text("Info lebih lanjut hubungi"),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Text("Halo WM 1500 157\n"
                                         "WA 0855 1500 157"),
                                  ],
                                ),
                              )





                        //       Padding(
                        //         padding: const EdgeInsets.only(left: 15),
                        //         child: Row(
                        //           children: [
                        //
                        //           ],
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 20, left: 60),
                        //   child: Container(
                        //     height: MediaQuery.of(context).size.width/3.9,
                        //     width: MediaQuery.of(context).size.width,
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20),
                        //       ),
                        //       color: Palette.facebookColor
                        //     ),
                        //     child: Padding(
                        //       padding: const EdgeInsets.only(left: 20),
                        //       child: Column(
                        //         children: [
                        //           Padding(
                        //             padding: const EdgeInsets.only(top: 10),
                        //             child: Text("Chat Kami",
                        //             style: TextStyle(
                        //               color: Colors.white,
                        //               fontSize: 18,
                        //               fontWeight: FontWeight.bold
                        //             ),),
                        //           ),
                        //           Row(
                        //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //             children: [
                        //               Padding(
                        //                 padding: const EdgeInsets.only(right: 1),
                        //                 child: Image.asset("assets/images/wa.png", width: 30, height: 30,),
                        //               ),
                        //               TextButton(
                        //                 onPressed: (){},
                        //                 child: Text("0855 1500 157",
                        //                 style: TextStyle(
                        //                   color: Colors.white,
                        //                   fontSize: 16,
                        //                   fontWeight: FontWeight.bold
                        //                 ),
                        //                 ),
                        //               ),
                        //               TextButton(onPressed: (){}, child: Image.asset("assets/images/hallowm.png", width: 90, height: 50,))
                        //             ],
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // )









                        //       Container(
                        //         child: Column(
                        //           children: [
                        //             Padding(
                        //               padding: const EdgeInsets.only(top: 5),
                        //               child: Text(
                        //                 "Whatsapp :",
                        //                 style: TextStyle(
                        //                 color: Colors.white,
                        //               ),
                        //               ),
                        //             ),
                        //             TextButton(onPressed: (){
                        //
                        //
                        //             },
                        //              child: Padding(
                        //                padding: const EdgeInsets.symmetric(vertical: 1),
                        //                child: Text(
                        //                 "0855 1500 157",
                        //                  style: TextStyle(
                        //                    color: Colors.white,
                        //                    fontSize: 20
                        //                  ),
                        //             ),
                        //              ),
                        //             ),
                        //             Column(
                        //               children: [
                        //                 Padding(
                        //                   padding: const EdgeInsets.only(bottom: 10),
                        //                   child: Text(
                        //                     "Hubungi Kami",
                        //                     style: TextStyle(
                        //                       color: Colors.white,
                        //                     ),
                        //                   ),
                        //                 ),
                        //                 TextButton(
                        //                     onPressed: (){}, child: Padding(
                        //                   padding: const EdgeInsets.symmetric(horizontal: 20),
                        //                   child: Text(
                        //                     "1500 157",
                        //                     style: TextStyle(
                        //                       fontSize: 20,
                        //                       color: Colors.white
                        //                     ),
                        //                   ),
                        //                 ))
                        //               ],
                        //             )
                        //           ],
                        //         ),
                        //         margin: EdgeInsets.only(left: 200),
                        //         width: MediaQuery.of(context).size.width/2.2,
                        //         height: MediaQuery.of(context).size.width/2.32,
                        //         decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                        //           topRight:  Radius.circular(20)),
                        //           color: Palette.facebookColor,
                        //         ),
                        //       ),
                        //   ])),
                        // ),
                      ],
                    ))])
                    ))])
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}
