## Data Diri

no peserta : 1_013FLC_22

Nama : M. Fivo Arnande

## Summary
Pada Section 27 ini saya belajar tentang Finite State Machine & Unit Testing

## Finite State Machine
### Apa itu Finite State Machine?
* Mesin yang memiliki sejumblah state
* Tiap state menunjukkan apa yang terjadi sebelumnya
### Contoh 
    Terdapat 3 state yang menunjukkan kejadian dalam suatu proses
- IDDLE saat tidak terjadi proses
- RUNNING saat proses sedang berjalan
- ERROR saat proses gagal di selesaikan
### Contoh Sukses
* IDDLE berubah menjadi RUNNING saat proses berjalan
* RUNNING kembali menjadi IDDLE saat proses selesai
### Contoh Gagal
* IDDLE berubah menjadi RUNNING saat proses berjalan
* RUNNING menjadi ERROR saat terjadi kegagalan
* ERROR kembali menjadi IDDLE

## Unit Test
### Apa itu Unit Test?
* Salah satu jenis pengujian pada perangkat lunak
* Pengujian dilakukan pada unit dalam perangkat lunak
* Unit yang dimaksud umumnya adalah fungsi atau method
### Tujuan Unit Test
* Memastikan fungsi dapat mengolah berbagai jenis input
* Memastikan hasil dari suatu fungsi atau method sudah sesuai
* Menjadi dokumentasi
### Bagaimana Melakukan Unit Test?
* Manual
    Unit dijalankan dan dicek hasilnya secara manual
* Automated
    Menulis script yang dapat dijalankan berkali-kali menggunakan test runner
#### Menambahkan Dependencies
* Tambahkan test, pada bagian dev_dependencies dalam file pubspec.yaml
* Jalankan flutter pub get pada terminal
#### Membuat File Test
* Pada folder test, tambahkan folder baru model/api
* Dalam folder tersebut, tambahkan file baru contact_api_test.dart
#### Menulsi Test Script
* Import Package test
* Membuat test case
* Menjalankan fungsi
* Cek hasil dengan expect
#### Menjalankan Test
    Menggunakan perintah flutter test
#### Mengelompokkan Test
* Beberapa test dengan subjek yang sama diletakkan dalam sebuah kelompok
* Dilakukan dengan menggunakan Group

## Mocking
### Apa itu Mocking?
* Proses yang terikat dengan sistem eksternal dapat mempengaruhi berjalannya pengujian
* Pengaruh tersebut dapat mengganggu proses pengujian
* Dilakukan mocking untuk menghindari masalah-masalah tersebut
### Bagaimana Cara Kerja Mocking
* Suatu object dibuat bentuk tiruannya
* Bentuk tiruan tersebut memiliki input dan output yang sama dengan yang asli
* Bentuk tiruan menghilangkan ketergantungan pada sistem eskternal
### Menambahkan Dependencies
* Tambahkan mockita dan build_runner, pada bagian dev_dependencies dalam file pubspec.yaml
* Jalankan flutter pub get pada terminal
### Melakukan Mocking
* Mengubah kode agar dapat dilakukan mocking
* Memasang annotation untuk membuat mock
* Membuat file mock dengan menjalankan perintah flutter pub run build_runner build
* Menggunakan mock yang telah dibuat
### Menjalankan Test
    Dengan Mocking, test berjalan lebih cepat