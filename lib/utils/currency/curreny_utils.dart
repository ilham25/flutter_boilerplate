import 'dart:math';

import 'package:intl/intl.dart';

final formatter = NumberFormat("#,###");

String removeComma(String text) {
  return text.replaceAll(",", "");
}

String getPercentageDiscount(double priceBefore, double priceAfter) {
  return (((priceBefore - priceAfter) / priceBefore) * 100).toStringAsFixed(0);
}

String generateRandomTrxId(int length) {
  var random = Random();
  var values = List<int>.generate(length, (i) => random.nextInt(10));
  return values.join();
}

String convertToRupiahWords(int number) {
  if (number == 0) return "Nol Rupiah";

  final List<String> satuan = [
    "",
    "Satu",
    "Dua",
    "Tiga",
    "Empat",
    "Lima",
    "Enam",
    "Tujuh",
    "Delapan",
    "Sembilan"
  ];

  final List<String> tingkat = ["", "Ribu", "Juta", "Miliar", "Triliun"];

  String sebutkan(int num) {
    String hasil = "";

    if (num >= 100) {
      int ratusan = num ~/ 100;
      hasil += ratusan == 1 ? "Seratus " : "${satuan[ratusan]} Ratus ";
      num %= 100;
    }

    if (num >= 20) {
      int puluhan = num ~/ 10;
      hasil += "${satuan[puluhan]} Puluh ";
      num %= 10;
    } else if (num >= 10) {
      if (num == 10) {
        hasil += "Sepuluh ";
      } else if (num == 11) {
        hasil += "Sebelas ";
      } else {
        hasil += "${satuan[num % 10]} Belas ";
      }
      num = 0;
    }

    if (num > 0) {
      hasil += "${satuan[num]} ";
    }

    return hasil.trim();
  }

  List<String> hasilAkhir = [];
  int tingkatIndex = 0;

  while (number > 0) {
    int bagian = number % 1000;
    if (bagian > 0) {
      String bagianSebutan = sebutkan(bagian);
      if (bagian == 1 && tingkatIndex == 1) {
        hasilAkhir.insert(0, "Seribu");
      } else {
        hasilAkhir.insert(0, "$bagianSebutan ${tingkat[tingkatIndex]}");
      }
    }
    number ~/= 1000;
    tingkatIndex++;
  }

  return "${hasilAkhir.join(" ").trim()} Rupiah";
}