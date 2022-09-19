## Data Diri

no peserta : 1_013FLC_42

Nama : M. Fivo Arnande

## Summary
Pada Section 14 ini saya belajar tentang Flutter Command Line Interface (CLI) and Flutter package management

## Flutter Command Line Interface (CLI) and Flutter package management

### Flutter CLI
    - Alat yang digunakan untuk berinteraksi dengan Flutter SDK
    - Perintah dijalankan dalam terminal
#### Important CLI Commands
##### Flutter Doctor
    Perintah untuk menampilkan informasi software yang dibutuhkan flutter

    "flutter doctor"
##### Flutter Create
    Perintah untuk membuat project aplikasi flutter baru di directory tertentu

    "flutter create <APP_NAME>"
##### Flutter Run
    Perintah untuk menjalankan project aplikasi di device yang tersedia

    "flutter run <DART_FILE>"
##### Flutter Emulator
    Perintah untuk menampilkan daftar emulator yang terinstall dan menampilkan option untuk membuka emulator atau membuat emulator baru

    - "flutter emulators"
    - "flutter emulators--launch<EMULATOR_ID>"
    - "flutter emulators--create[--name xyz]"
##### Flutter Channel
    Perintah untuk menampilkan daftar flutter channel yang tersedua dan menunjukkan channel yang digunakan saat ini

    "flutter channel"
##### Flutter Pub
    Ada dua syntax yang bisa kita gunakan, yaitu:

    * Flutter pub add, untuk menambahkan packages ke dependencies yang ada di pubspec.yaml

    "flutter pub add <package_name>"

    * Flutter pub get, untuk mendownload semua packages atau dependencies yang ada di pubspec.yaml

    "flutter pub get"
##### Flutter Build
    Perintah untuk memproduksi sebuah file aplikasi untuk keperluan deploy atau publish ke AppStore. PlayStore, dll.

    "flutter build <DIRECTORY>"
##### Flutter Clean
    - Perintah untuk menghapus folder build serta file lainnnya yang dihasilkan saat kita menjalankan aplikasi di emulator
    - Perintah ini akan memperkeciol ukuran project tersebut

    "flutter clean"
#### Package Management
- Flutter mendukun sharing packages
- Packages dibuat developers lain
- Mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau from scratch
- Mendapatkan packages diwebsite pub.dev
#### Cara Menambahkan Packages
 - Cari package di pub.dev
 - Copy baris dependencies yang ada dibagian installing
 - Buka pubspec.yaml
 - Paste barisnya dibawah dependencies pubspec.yaml
 - Run flutter pub get di terminal
 - Import package di file dart agar bisa digunakan
 - Stop atau restart aplikasi jika dibutuhkan
