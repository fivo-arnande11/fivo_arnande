## Data Diri

no peserta : 1_013FLC_22

Nama : M. Fivo Arnande

## Summary
Pada Section 20 ini saya belajar tentang Flutter Navigation

## Flutter Navigation
#### Apa itu Navigation?
    Berpindah dari halaman satu ke halaman lain
### Navigation Dasar
    - Perpindahan halaman menggunakan Navigator.push()

    - Kembali ke halaman sebelum nya menggunakan Navigator.pop()
#### Mengirim Data ke Halaman Baru
    Menggunakan parameter pada constructor halaman

### Navigation dengan Named Routes
    // Tiap halaman memiliki alamat yang disebut route
    * Perpindahan halaman menggunakan Navigator.pushNamed()
    * Kembali ke halaman sebelumnya menggunakan Navigator.pop()
#### Mendaftarkan Route
* Tambahkan initialRoute dan routers pada MaterialApp
* Tiap route adalah fungsi yang membentuk halaman
#### Mengirim Data ke Halaman Baru
    Menggunakan arguments saat melalkukan pushNamed
