Anggota
    1.Ade Dwi Herdiansyah
    2.Alfan Fadillah Ramadhan

Aktor
    1.Petugas Parkir
    2.Pengguna Parkir

Penjelasan
    Program Dart ini berfungsi untuk menghitung biaya parkir berdasarkan klasifikasi kendaraan dan durasi waktu. Logika program dibangun berdasarkan tiga aturan bisnis dan struktur dekomposisi data berikut.

Aturan Bisnis
    1.BR-01: Durasi parkir dihitung per jam, sisa menit dibulatkan ke atas (minimal 1 jam).
    2.BR-02: Untuk motor, tarif dikenakan sebesar Rp2.000 pada jam pertama, ditambah Rp1.000 untuk setiap jam berikutnya.
    3.BR-03: Untuk mobil, tarif dikenakan sebesar Rp5.000 pada jam pertama, ditambah Rp3.000 untuk setiap jam berikutnya.

Input dan Output
    1.Input:Memerlukan data jenis kendaraan (motor atau mobil) dan durasi parkir dalam satuan menit.
    2.Output: Mengembalikan nilai akhir berupa tarif parkir dalam satuan rupiah (Rp).

Dekomposisi Sistem
    Sistem dipecah menjadi tiga alur pemrosesan utama berdasarkan diagram dekomposisi:
        1.jenisKendaraan: Membedakan jenis kendaraan antara motor dan mobil menggunakan abstraksi data enum.
        2.jamParkir: Mengonversi durasi dari menit ke jam, di mana fungsi akan menghitung durasi per jam dan membulatkan sisa menit ke atas sesuai aturan BR-01.
        3.hitungTarif: Menghitung tarif parkir akhir berdasarkan jenis kendaraan yang merujuk pada aturan BR-02 untuk motor dan BR-03 untuk mobil.

Skenario Pengujian yang Diharapkan
    Kode ini dirancang untuk memenuhi ekspektasi pengujian tarif berikut:
        1.Kendaraan motor dengan durasi 15 menit menghasilkan tarif Rp.2000.
        2.Kendaraan motor dengan durasi 60 menit menghasilkan tarif Rp.2000.
        3.Kendaraan motor dengan durasi 150 menit menghasilkan tarif Rp.4000.
        4.Kendaraan mobil dengan durasi  menit menghasilkan tarif Rp.5000.
    
Flowchart    
                [START]
                    |
                    v
                [INPUT] Jenis Kendaraan (Motor/Mobil) & Durasi (menit)
                    |
                    v
                [PROSES] Hitung totalJam = jamParkir(menit)
                            -> Bagi menit dengan 60. Jika ada sisa, bulatkan jam ke atas (+1)
                    |
                    v
                    [CEK KONDISI] Jenis Kendaraan?
                    |
                    +---> [MOTOR]
                    |       |
                    |       +-- Jika totalJam <= 1  -> Tarif = Rp2.000
                    |       +-- Jika totalJam > 1   -> Tarif = 2000 + ((totalJam - 1) * 1000)
                    |
                    +---> [MOBIL]
                            |
                            +-- Jika totalJam <= 1  -> Tarif = Rp5.000
                            +-- Jika totalJam > 1   -> Tarif = 5000 + ((totalJam - 1) * 3000)
                    |
                    v
                    [OUTPUT] Tampilkan total Tarif Parkir
                    |
                    v
                    [END]