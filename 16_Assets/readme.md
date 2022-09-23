## Data Diri

no peserta : 1_013FLC_22

Nama : M. Fivo Arnande

## Summary
Pada Section 16 ini saya belajar tentang Assets

## Assets
    - File yang di bundled dan di deployed bersamaan dengan aplikasi
    - Tipe-tipe assets, seperti: static data(JSON files), icons, images dan font file (ttf)
### Menentukan Assets
    - Flutter menggunakan pubspec.yaml
    - Pubspec.yaml terletak pada root project, untuk mengindentifikasi assest yang dibutuhkan aplikasi
    - Gunakan karakter "/" untuk memasukkan assets dibawah satu directory name
## Image
    - Image atas gambar akan membuat tampilan aplikasi menjadi lebih menarik
    - Flutter mendukung format gambar seperti JPEG,WebP,GIFT,Animated Web/GIF,PNG,BMP dan WBMP
### Loading Images
    - Gunakan widget image
    - Membutuhkan properti image dengan nilai class  AssetImage()
    - Menggunakan method image.asset, mendapatkan image yang sudah ditambahkan dalam project 
    - Menggunakan method image.network, Mendapatkan data image melalui internet dengan menggunakan string urlnya
## Font
    - Pengunaan font dengan style tertentu akan menjadi keunikan pada aplikasi
    - Penentuan font yang mau di pakai biasanya oleh UI designer
    - Penerapan font menggunakan custom font atau dari package
### Font dari Package
    Cara menggunakan font dari packge:
    - Step 1: Tambahkan package google_fonts di dependencies
    - Step 2: Import package di file dart
    - Step 3: Gunakan font dengan memanggil GoodleFonts.namaFont()

