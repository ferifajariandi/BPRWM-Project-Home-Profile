import 'package:flutter/material.dart';
import 'package:untitled/data/colors.dart';

class ContainerBerita extends StatelessWidget {
  const ContainerBerita(
      {Key? key,
      required this.textJudul,
      required this.textTanggal,
      required this.imageBox})
      : super(key: key);

  final String textJudul;
  final String textTanggal;
  final String imageBox;

  @override
  Widget build(BuildContext context) {
    return ContentBeritaTerkini();
  }

  Container ContentBeritaTerkini() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 6),
      height: 150,
      width: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.8),
          spreadRadius: 1,
          blurRadius: 4,
        )
      ]),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: Image.asset(
                imageBox,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3),
            child: Text(
              textJudul,
              textAlign: TextAlign.left,
              maxLines: 4,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Palette.facebookColor,
              ),
            ),
          ),
          Text(
            textTanggal,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
