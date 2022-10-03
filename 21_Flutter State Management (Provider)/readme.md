## Data Diri

no peserta : 1_013FLC_22

Nama : M. Fivo Arnande

## Summary
Pada Section 21 ini saya belajar tentang Flutter State Management (Provider)

## Flutter Global State Management

### State
* Data yang dapat dibaca saat pembuatan widget
* Dapat berubah saat widget sedang aktif
* Hanya dimiliki oleh StatefulWidget
#### Kenapa Perlu Global State?
    Agar antara widget dapat memanfaatkan state yang sama dengan mudah
#### Memanfaatkan State
* Dibuat sebagai property dari class
* Digunakan pada widget saat build
#### Mengubah State
* Menggunakan method SetState

### Global State
    State biasa yang dapat digunakan pada seluruh widget
#### Provider
    State Management
    Perlu di-install agar dapat digunakan
#### Instalasi Provider
* Menambah package provider pada bagian dependencies dalam file pubspec.yaml
* Jalankan perintah flutter pub get
#### Membuat State Provider
* Buat file bernama contact.dart
* Definisikan state dalam bentuk class
#### Mendaftarkan State Provider
* Import dalam file main.dart
* Daftarkan pada runApp dengan MultiProvider
#### Menggunakan State dari Provider
* Simpan provider dalam variable
* Ambil data dari provider melalui getter