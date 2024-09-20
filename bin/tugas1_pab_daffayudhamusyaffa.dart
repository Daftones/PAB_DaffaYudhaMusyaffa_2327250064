class Produk 
{
  String namaProduk;
  double harga;
  int jumlah;
  double diskon;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);

  double hitungTotalHargaTanpaDiskon() 
  {
    return harga * jumlah;
  }

  double hitungTotalHargaDenganDiskon()
  {
    double totalTanpaDiskon = hitungTotalHargaTanpaDiskon();
    double hargadiskon = totalTanpaDiskon * (diskon / 100);
    return totalTanpaDiskon - hargadiskon;
  }

  void tampilkanInformasiProduk() 
  {
    print("Nama Produk                : $namaProduk");
    print("Harga Barang               : $harga");
    print("Jumlah Barang              : $jumlah");
    print("Diskon                     : ${diskon}%");
    print("\n");
    print("Total Harga Tanpa Diskon   : Rp ${hitungTotalHargaTanpaDiskon()}");
    print("Total Harga Setelah Diskon : Rp ${hitungTotalHargaDenganDiskon()}");
  }
}

void main() 
{
  Produk Kamera = Produk("Kamera Nikon",1500000, 2, 10);

  Kamera.tampilkanInformasiProduk();
}