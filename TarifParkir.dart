enum jenisKendaraan {motor, mobil}

void main() {
  int jamParkir(int menit){
    int jam = menit ~/ 60;
    int sisa = menit % 60;
     if (sisa > 0) {
    jam = jam + 1;
     }
  return jam;
  }
  int hitungTarif(jenisKendaraan jenis, int menit){
    int totalJam = jamParkir(menit);
    switch(jenis){
      case jenisKendaraan.motor:
        if (totalJam <= 1){
          return 2000;
        }
        return 2000 + ((totalJam - 1) * 1000);
        
      case jenisKendaraan.mobil:
        if (totalJam <= 1){
          return 5000;
        }
        return 5000 + ((totalJam - 1) * 3000);
    }
  }
  
 print('Kasus 1 (Motor, 15 menit)   : Rp${hitungTarif(jenisKendaraan.motor, 15)}');
 print('Kasus 2 (Motor, 60 menit)   : Rp${hitungTarif(jenisKendaraan.motor, 60)}');
 print('Kasus 3 (Motor, 150 menit)   : Rp${hitungTarif(jenisKendaraan.motor, 150)}');
 print('Kasus 4 (Mobil, 30 menit)   : Rp${hitungTarif(jenisKendaraan.mobil, 30)}');
 print('Kasus 5 (Mobil, 60 menit)   : Rp${hitungTarif(jenisKendaraan.mobil, 60)}');
 print('Kasus 6 (Mobil, 181 menit)   : Rp${hitungTarif(jenisKendaraan.mobil, 181)}');

}