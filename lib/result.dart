import 'package:flutter/material.dart';
import 'dart:math';
import 'about_me.dart';

class BMIResult extends StatelessWidget {
  BMIResult(
      {@required this.nama_lengkap,
      @required this.zodiac,
      @required this.tahun_lahir});
  final int tahun_lahir;
  final String nama_lengkap;
  final String zodiac;

  @override
  Widget build(BuildContext context) {
    String cBMI;
    if (zodiac == "Aries")
      cBMI =
          "Kamu akan menyerah pada pekerjaanmu karena kamu kekuarangan energi dan kamu perlu berhemat hari ini, Aries!";
    else if (zodiac == "Sagitarius")
      cBMI =
          "Kamu sangat percaya diri untuk menyelesaikan sebuah kompetisi, dan kamu akan memenangkannya dan masih banyak pekerjaan yang perlu kamu selesaikan dalam waktu dekat.";
    else if (zodiac == "Taurus")
      cBMI =
          "Jangan buru-buru untuk menilai seseorang dan Buat anggaran keuanganmu sebaik mungkin.";
    else if (zodiac == "Gemini")
      cBMI =
          "Kamu sangat baik hati, bahkan banyak orang yang senang berada di dekatmu dan Mungkin akan ada rezeki datang hari ini untukmu.";
    else if (zodiac == "Leo")
      cBMI =
          "Terlalu keras kepala tidak akan segera membawamu menyelesaikan masalah dan Jangan berfoya-foya, ada kebutuhan yang lebih penting yang perlu kamu penuhi.";
    else if (zodiac == "Capricorn")
      cBMI =
          "Kerjakerasmu akan berakhir bahagia, hanya saja menunggu waktu yang tepat dan Berapa pun pendapatanmu, kamu masih saja merasa kurang.";
    else if (zodiac == "Cancer")
      cBMI =
          "Ketika banyak ada banyak pekerjaan, kamu masih memperhatikan pola makan dan Periksa kembali keuanganmu, kamu perlu untuk memperbaiki anggaran.";
    else if (zodiac == "Pisces")
      cBMI =
          "Kamu akan melakukan olahraga rutin, sepertinya kamu berniat untuk menurunkan berat badan dan jangan lupa membayar hutang pada temanmu Pisces.";
    else if (zodiac == "Virgo")
      cBMI =
          "Kamu terlalu banyak bergadang, sehingga kamu sangat mengantuk saat bekerja dan Jangan terlalu percaya pada beberapa orang, mungkin kamu akan tertipu.";
    else if (zodiac == "Libra")
      cBMI =
          "Kamu mencoba memperbaiki kondisi kesehatanmu yang buruk dan Mintalah bantuan kepada seseorang yang berpengalaman untuk mengajarimu mengelola keuangan.";
    else if (zodiac == "Scorpio")
      cBMI =
          "Berbicara jujur itu salah satu pedomanmu dan Keuangan yang membaik membuatmu terlihat damai.";
    else if (zodiac == "Aquarius")
      cBMI =
          "Terlalu lelah membuatmu kurang fokus untuk mengerjakan sesuatu dan Keberuntungan mungkin memihakmu hari ini.";
    else
      cBMI = "Salah memasukkan nama zodiak";

    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white30,
        title: Text('Result'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
                child: Container(),
              ),
              new Text(
                "Nama : ${nama_lengkap}",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
                child: Container(
//              color: Colors.white,
                    ),
              ),
              new Text(
                "Umur : ${2020 - tahun_lahir}",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
                child: Container(),
              ),
              new Text(
                "${zodiac}",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
                child: Container(),
              ),
              new Text(
                "Keterangan : " + cBMI,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
                child: Container(
//                color: Colors.white,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
