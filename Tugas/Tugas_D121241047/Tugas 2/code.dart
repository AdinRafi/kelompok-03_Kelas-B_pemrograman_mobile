void main() {
  // 1. Menyimpan daftar harga
  Map<String, double> daftarHarga = {
    'Buku': 25000,
    'Pulpen': 10000,
    'Tas': 150000,
    'Sepatu': 300000,
    'Jaket': 200000,
  };

  // 2. Menyimpan daftar belanjaan
  List<String> daftarBelanjaan = [
    'Buku',
    'Pulpen',
    'Tas',
    'Sepatu',
  ];

  double subtotal = hitungTotal(daftarBelanjaan, daftarHarga);
  double diskon = hitungDiskon(subtotal);
  double totalAkhir = subtotal - diskon;

  print('PROGRAM BELANJA');

  print('\nDaftar Belanjaan:');
  for (String barang in daftarBelanjaan) {
    print('- $barang : Rp${daftarHarga[barang]}');
  }

  print('\nSubtotal  : Rp$subtotal');
  print('Diskon    : Rp$diskon');
  print('Total Akhir: Rp$totalAkhir');
}

// Function untuk menghitung total harga belanjaan
double hitungTotal(
  List<String> daftarBelanjaan,
  Map<String, double> daftarHarga,
) {
  double total = 0;

  for (String barang in daftarBelanjaan) {
    total += daftarHarga[barang]!;
  }

  return total;
}

// Function untuk menentukan diskon
double hitungDiskon(double total) {
  if (total >= 500000) {
    return total * 0.20;
  } else if (total >= 300000) {
    return total * 0.10;
  } else if (total >= 100000) {
    return total * 0.05;
  } else {
    return 0;
  }
}