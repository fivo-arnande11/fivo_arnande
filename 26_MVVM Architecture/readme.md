## Data Diri

no peserta : 1_013FLC_22

Nama : M. Fivo Arnande

## Summary
Pada Section 26 ini saya belajar tentang MVVM Architecture

## MVVM Architecture
    MVVM => Model-View ViewModel

    Memisahkan logic dengan tampilan (view) ke dalam ViewModel
### Keuntungan MVVVM Architecture
* Reusability
    Jika ada beberapa tampilan yang memerlukan alur logic yang sama, mereka bisa menggunakan ViewModel yang sama
* Maintainability
    Mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic
* Testability
    Pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian
### Melakukan MVVM
* Model memiiki 2 bagian, yaitu bentuk data yang akan digunakan dan sumber dari data tersebut
* Tiap screen diletakkan dalam sebuah direktori yang di dalamnya terdapat View dan ViewModel
### Model
* Bentuk data yang akan digunakan, dibuat dalam bentuk class
* Data-data yang dimuat, diletakkan pada property
### ViewModel
* Menyimpan data-data dan logic yang diperlukan halaman ContactScreen
* jika widget lain memerlukan logic yang sama, dapat menggunakan ViewModel ini juga
#### Mendaftarkan ViewModel
* Menggunakan MultiProvider agar dapat menggunakan banyak ViewModel
* MaterialApp sebagai child utama
### View
    Menggunakan StatefulWidget
#### Menampilkan Data di View
* Letakkan pada bagian build
* Menggunakan getters yang ada pada ViewModel
* Data dapat langsung ditampilkan pada widgets