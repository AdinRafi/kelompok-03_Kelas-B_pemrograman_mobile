void main() {
  Map<String, int> daftarHarga = {
    "beras": 12000,
    "gula": 15000,
    "minyak": 20000,
    "telur": 25000,
  };

  List<String> daftarBelanjaan = ["beras", "gula", "minyak", "telur"];

  int totalBelanja = hitungTotal(daftarHarga, daftarBelanjaan);
  double diskon = tentukanDiskon(totalBelanja);
  double totalAkhir = totalBelanja - (totalBelanja * diskon);

  print("Total Belanja : Rp$totalBelanja");
  print("Diskon        : ${(diskon * 100).toInt()}%");
  print("Total Akhir   : Rp${totalAkhir.toStringAsFixed(0)}");
}

int hitungTotal(Map<String, int> harga, List<String> belanjaan) {
  int total = 0;
  for (var item in belanjaan) {
    total += harga[item] ?? 0;
  }
  return total;
}

double tentukanDiskon(int total) {
  if (total >= 100000) {
    return 0.20;
  } else if (total >= 50000) {
    return 0.10;
  } else if (total >= 20000) {
    return 0.05;
  } else {
    return 0;
  }
}
