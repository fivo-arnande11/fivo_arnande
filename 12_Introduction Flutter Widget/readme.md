## Data Diri

no peserta : 1_013FLC_42

Nama : M. Fivo Arnande

## Summary
Pada Section 12 ini saya belajar tentang Introduction Flutter Widget

## Flutter

### Perkenalan Flutter
    Flutter adalah Alat pengembangan antarmuka pengguna yang digunakan untuk membuat aplikasi mobile, desktop, dan web.
#### Keunggulan Flutter
    - Mudah digunakan dan dipelajari
    - Produktivitass Tinggi
    - Dokumentasi lengkap
    - Komunitas yang berkembang
#### Bagian dari Flutter
##### SDK (Software Develoment Kit)
    Alat-alat untuk membantu proses pengembangan aplikasi
##### Framework
    Perlengkapan untuk membentuk aplikasi yang dapat dikustomisasi
##### Membuat Project
    Dilakukan dengan menjalankan perintah:
    
    flutter create<nama_project>
##### Menjalankan Project
    * Masuk ke direktori project
    * Jalankan perintah:
        flutter run
##### Struktur Direktori
    Direktori platform:
        * android
        * ios
        * web

     Direktori project:
        * lib - ruang kerja utama
        * test - aktivitas pengujian   
##### File Utama
    * Pertama kali dibaca dan dijalankan
    * Dalam direktori lib
### Widget
    * Digunakan untuk membentu antarmuka(UI)
    * Berupa class
    * Dapat terdiri dari beberapa widget lainnya
#### Jenis Widget
##### Stateless Widget
    - Tidak bergantung pada perubahan data
    - Hanya fokus pada tampilan
    - Dibuat dengan extends pada class StatelessWidget
##### Stateful Widget
    - Mementingkan pada perubahan data
    - Dibuat dengan extends pada class StatefulWidget
    - 1 widget menggunakan 2 class (widget dan state)
### Built in Widget
    - Widget yang dapat langsung digunakan
    - Sudah ter-install bersama Flutter
#### Material App
    Membangun aplikasi dengan desain material
#### Scaffold
    Membentuk sebuah halaman
#### Appbar
    Membentuk application bar yang terleltak pada bagian atas halaman
#### Text
    Menampilkan teks

    