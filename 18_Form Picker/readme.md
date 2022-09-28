## Data Diri

no peserta : 1_013FLC_22

Nama : M. Fivo Arnande

## Summary
Pada Section 18 ini saya belajar tentang Form Picker

### From Picker (Basic Layouting)

#### Row dan Column 
* Row meletakkan widget children nya secara horizontal
* Column Meletakkan widget children nya secara vertikal
#### MainAxisSize
* Menentukan seberapa banyak space menempati main axis
* Main axis dari Row adalah horizontal
* Main axis dari Column adalah vertikal
* Properti mainAxisSize memiliki dua values, MainAxisSize.max dan MainAxisSize.min
* MainAxisSize.max menempati semua space dari main axis
* MainAxisSize.min tidak memiliki extra space, hanya untuk children nya saja
#### MainAxisAlignment
* Properti ini digunakan Row dan Column untuk memposisikan children merekan di extra space yang ada
* Memiliki 6 values:
    1. MainAxisAlignment.start
    2. MainAxisAligment.end
    3. MainAxisAligment.center
    4. MainAxisAligment.spaceBetween
    5. MainAxisAligment.spaceEvenly
    6. MainAxisAligment.spaceAround
#### CrossAxisAlignment
* Properti ini digunakan Row dan Column untuk memposisikan children mereka pada cross axis
* Cross Axis dari Row adalah vertikan dan Cross Axis dari Column adalah horizontal
* Memiliki 5 values:
    1. CrossAxisAlignment.start
    2. CrossAxisAlignment.end
    3. CrossAxisAlignment.center
    4. CrossAxisAlignment.stretch
    5. CrossAxisAlignment.baseline
#### Flexible Widget
* Membungkus widget lain sehingga child dari Flexible widget menjadi flexible atau resizable
* Sangat berguna untuk membuat aplikasi yang responsif
* Harus berada dalam turunan parent widget Row dan Column
* Perubahan ukuran ditentukan dengan properti fit dan flex
##### Flex Properti
* Menentukan perbandingan ukuran dari child widget nya
* Menerima nilai values berupa integer
* Membandingkan nilai nya dengan flex properti lain
##### Fix Properti
* Menentukan apakah flexible widget memenuhi extra space yang tersedia di main axis nya
* menerima nilai values berupa FlexFit.loose atau FlexFit.tight
* FlexFit.loose akan memiliki ukuran minimum
* FlexFit.tight akan memiliki ukuran maximum
##### Penggunaan Flexible
* Flexible tanpa fixed height dan width
#### Expanded Widget
* Membungkus widget lain sehingga ukuran dari child Expanded widget akan dipaksa untuk memenuhi ruang yang tersedis
* Sangat berguna untuk membuat aplikasi yang responsif
* Harus berada dalam turunan widget Row atau Column
* Memiliki default value FlexFit.tight
* Perubahan ukuran ditentukan dengan properti flex
#### Demo App
##### Implementasi Flutter Basic Layout
* Terdapat 4 bagian yang disusun ke dalam column
* Bagian 1: Image Section
* Bagian 2: Title Section, row yang memiliki 3 children, column text, icon star, dan text number
* Bagian 3: Button Section, row yang memiliki 3 children, column, icon dan text
* Bagian 4: Text Section