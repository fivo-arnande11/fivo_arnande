## Data Diri

no peserta : 1_013FLC_22

Nama : M. Fivo Arnande

## Summary
Pada Section 25 ini saya belajar tentang Introduction REST API - JSON serialization/deserialization

## Rest API Client
### Rest API  
    Representational State Transfer Application Programming Interface
* Arsitektural yangmemisahkan tampilan dengan proses bisnis
* Bagian tampilan dengan proses bisnis berkirim data melalui HTTP Request
### HTTP
    Protokol yang digunakan untuk berikirim data pada internet, biasanya data tersebut berbentuk media web
#### Pola Komunikasi
* Client mengirim request
* Server mengolah dan membalas dengan memberi response
#### Struktur Request
* URL
    Alamat halaman yang akan di akses
* Method (GET, POST, PUT, DELETE)
    Menunjukan aksi yang diinginkan
* Header
    Informasi tambahan terkait request yang dikirimkan
* Body
    Data yang disertakan bersama request
#### Struktur Response
* Status Code
    Kode yang mewakili keseluruhan response, baik sukses maupun gagal
* Header
    Informasi tambahan terkait response yang diberikan
* Body
    Data yang disertakan bersama reponse
### Dio
* Sebagai HTTP Client
* Dimanfaatkan untuk melakukan REST API
#### Instalasi
* Tambahkan dependency pada pubspec.yaml
* Jalankan perintah flutter pub get pada terminal
### Serialisasi JSON
* Cara penulisan data
* Javascript Object Notation
* Umum digunakan pada REST API
* Mengubah struktur data ke bentuk JSON
    Map/List => Serialisasi => JSON
* Menggunakan fungsi jsonEncode dari package dart:convert
### Deserialisasi JSON
* Mengubah bentuk JSON ke struktur data
    JSON => DESERIALISASI => Map/List
* Menggunakan fungsi jsonDecode dari package dart:convert