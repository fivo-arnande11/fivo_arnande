## Data Diri

no peserta : 1_013FLC_42

Nama : M. Fivo Arnande

## Summary
Pada Section 11 ini saya belajar tentang Dart Object Oriented Programming 2.

## Dart Object Oriented Programming

### Consturctor
    * Method yang di jalankan saat pembuatan object
    * Dapat menerima parameter
    * Tidak memiliki return
    * Nama sama dengan nama class
#### Memberi Constructor
    Tambahkan method menggunakan nama sama dengan nama class
### Inheritance
    * Membuat class baru dengan memanfaatkan class yang sudah ada
    * Bertujuan agar kemampuan class yang sudah ada dapat dimiliki oleh class baru
#### Melakukan Inheritance
    Menambahkan extend saat pembuatan class baru
#### Penggunaan Class
    Proses membuat object dari class yang terjadi inheritance seperti pembuatan object pada umumnya
### Method Oerriding
    * Menulis ulang method yang ada pada super-class
    * Bertujuan agar class memiliki method yang sama dengan proses yang berbeda
#### Melakukan Overriding
    * Dilakukan pada class yang melakukan inheritance
    * Method sudah ada pada class induk
    * Method ditulis ulang seperti membuat method baru pada class anak
    * Ditambahkan tanda @override di baris sebelum method dibuat
#### Penggunaan Class
    Proses membuat object dari class yang terjadi inheritance seperti pembuatan object pada umumnya
### Interface
    * Berupa Class
    * Menunjukkan method apa saja yang ada pada suatu class
    * Seluruh method wajib di-override
    * Digunakan dengan menggunakan implements
#### Menggunakan Interface
    * Sekilas mirip inheritance
    * Pada class yang melakukan implements, wajib melakukan override semua method yang ada pada class induk
#### Penggunaan Class
    Proses membuat object dari class yang terjadi inheritance seperti pembuatan object pada umumnya
### Abstract Class
    * Berupa class abstrak
    * Menunjukkan method apa saja yang ada pada suatu class
    * Digunakan dengan menggunakan extends
    * Tidak dapat dibuat object
    * Tidak semua method harus di override
### Polymorphism
    * Kemampuan data berubah menjadi bentuk lain
    * Tipe data yang dapat digunakan adalah super class
    * Dapat dilakukan pada class dengan extends atau implements
#### Melakukan Polymorphism
    Object dari class kambing dengan tipe data class hewan
### Generics
    * Dapat digunakan pada class atau fungsi
    * Memberi kemampuan agar dapat menerima data dengan tipe yang berbeda
    * Tipe data yang diinginkan, ditentukan saat membuat class atau menjalankan fungsi
#### Membuat Class dengan Generics
    * Class Hadiah dapat dimasukkan data dengan tipe T
    * Tipe T dapat digunakan diseluruh class Hadiah
#### Menggunakan Class dengan Generics
    Setelah nama class, menjadi tempat tipe data yang diingikan
#### Membuat Fungsi dengan Generics
    * Setelah nama fungsi, menjadi tempat variabel generics
    * Setelah nama fungsi, menjadi tempat tipe data yang diinginkan
