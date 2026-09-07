Map<String, int> daftarHarga = {
  "Apel": 5000,
  "Pisang": 3000,
  "Jeruk": 4000,
  "Mangga": 7000,
  "Semangka": 10000
};

Map<String, int> daftarBelanja = {
  "Apel": 2,
  "Pisang": 3,
  "Jeruk": 1,
  "Mangga": 4,
  "Semangka": 1
};

int jumlahBarang = 0;

double cariDiskon() {
  jumlahBarang = 0;

  for (int item in daftarBelanja.values) {
    jumlahBarang += item;
  }

  double diskon;

  if (jumlahBarang >= 10) {
    diskon = 0.2;
  } else if (jumlahBarang >= 5) {
    diskon = 0.1;
  } else {
    diskon = 0;
  }

  return diskon;
}

void cariHargaTotal() {
  double totalHarga = 0;

  daftarBelanja.forEach((item, jumlah) {
    if (daftarHarga.containsKey(item)) {
      double harga = daftarHarga[item]!.toDouble();
      double subtotal = harga * jumlah;
      totalHarga += subtotal;
    }
  });

    double diskon = cariDiskon();
  print("Total Harga Sebelum Diskon: $totalHarga");
  print("Diskon: ${(diskon * 100).toInt()}%");
  print("Total Harga Setelah Diskon: ${totalHarga - (totalHarga * diskon)}");
}

void main() {
  cariHargaTotal();
}
