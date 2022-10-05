## Data Diri

no peserta : 1_013FLC_22

Nama : M. Fivo Arnande

## Summary
Pada Section 22 ini saya belajar tentang Flutter State Management (BLoC)

## State Management (BLoc)

### Declarative UI
* Flutter memiliki sifat declarative yang artinya flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini
#### State
* State adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori
* Flutter akan membangun ulang UI nya ketika ada state atau data yang berubah
* Ada 2 jenis state dalam flutter, ephemeral state dan app state
##### Ephemeral State
* Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widgetnya, contoh nya :
-PageView
-BottomNavigationBar
-SwitchButton
* Tidak perlu state management yang kompleks
* Hanya membutuhkan StatefulWidget dengan menggunakan fungsi setState()
##### App State
* Digunakan ketika bagian yan lain suatu aplikasi membutuhkan akses ke data state widget, contohnya:
-Login info
-Pengaturan preferensi pengguna
-Keranjang belanja, dimana informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda
#### Pendekatan State Management
* setState
    Lebih cocok penggunaan nya pada ephemeral state
* Provider
    Penggunaan untuk state management yang lebih kompleks seperti app state, pendekatan ini direkomendasikan oleh tim flutter karena mudah di pelajari
* Bloc
    Menggunakan pola stream/observable, memisahkan UI dengan bisnis logic nya

### Provider
    Class yang perlu diperhatikan dalam penggunaan provider,yaitu:
* Dari Package Provider
    - ChangeNotifierProvider
    - MultiProvider
    - Consumer
* Build in class dari Flutter SDK
    - ChangeNotifier
#### ChangeNotifier
* Class yang menambah dan menghapus listeners
* Digunakan denganc ara meng-extends
* Memanggil notifyListeners(), fungsi yang memberitahu widget yang menggunakan state bahwa terjadi pertubahan data sehingga UI nya harus dibangun ulang

### BLoc
* BLoc (Business Logic Component)
* Memisahkan antara business logic dengan UI
#### Kenapa Bloc?
* Simple
* Powerful
* Testable
#### Cara Kerja Bloc
* Menerima event sebagai input
* Dianalisa dan Dikelola di dalam BLoc
* Menghasil state sebagai output
#### Stream
* Rangkaian proses secara asynchronous
* Actor utama di dalam BLoc