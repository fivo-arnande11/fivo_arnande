## Data Diri

no peserta : 1_013FLC_22

Nama : M. Fivo Arnande

## Summary
Pada Section 19 ini saya belajar tentang Dialog Bottom Sheet

## Diaolog & Bottom Sheet

### Aplikasi Task Management
* Membuat model untuk informasi yang mau disimpan, buat folder models dan di dalam nya buat file dart  baru task_model.dart
* Membuat Task Screen, buat folder screens di dalam nya buat file dart baru task_screen.dart
* Membuat Empty Screen, buat file dart baru empty_task_screen.dart di folder screens
* Tambahkan package provider di pubspec.yaml
* Membuat Task Manager, buat file dart baru task_manager.dart di dalam folder models. Tambahkan method deleteTask dan addTask
* (main.dart) menambahkan TaskManager sebagai provider
* (task_screen.dart) membuat fungsi buildTaskScreen, akan me-return antara Task Screen yang ada data nya atau yang kosong dan panggil fungsi nya di body
* Membuat Task item Screen, buat file dart baru task_item_screen.dart di dalam folder screens dan tambahkan properti onCreate
* (task_screen.dart) buat FloatingActionButton, untuk navigasi ke TaskItemScreen
* (task_item_screen.dart) menambahkan state properti, initState, dan dipose
* (task_item_screen.dart)
membuat buildNameField dan panggil fungsi nya di dalam listView
* (task_item_screen.dart) membuat buildButton dan panggil fungsi nya di dalam ListView
* Membuat Task item Card, buat folder baru components lalu didalam nya buat file dart baru task_item_card.dart
* (task_item_screen.dart) menambahkan call back handler di ElevatedButton pada buildbUTTON, dan menambahkan package uuid
* Membuat Task List Screen, dalam folder screens buat file dart baru task_list_screen.dart Dan tambahkan di buildTaskScreen (task_screen.dart)
* (task_list_screen.dart) menambahkan properti yang dibutuhkan pada TaskItemCard untuk melihat task yang sudah dibuat

### AlertDialog
* Untuk tampilan android, dari material design
* Menginformasikan pengguna tentang situasi tertentu
* Bisa digunakan untuk mendapatkan input dari user
* Membutuhkan helper method showDialog
#### Cara Membuat AlertDialog
* (task_item_card.dart) menambahkan Alert Dialog
* Memanggil fungsi showDialog di dalam fungsi onPressed pada IconButton
* showDialog membutuhkan context dan builder
* Di builder nya akan me-return AlertDialog
* AlertDialog menyediakan properti seperti content dan actions
* Content bisa di masukan widget text, gambar dan animasi gambar
* Actions bisa ditambahkan button untuk menerima respon dari user
* (task_item_card.dart) membuat properti onPressed
* (task_list_screen.dart) menambahkan fungsi onPresed pada TaskItemCard, pada body fungsi nya tambahkan method deleteTask, Navigator.pop(context), dan ScaffoldMessenger

### Bottom Sheet
* Seperti dialog tetapi muncul dari bawah layar aplikasi
* Menggunakan fungsi bawaan flutter showModalBottomSheet
* Membutuhkan dua properti, yaitu context dan builder
#### Cara Membuat Bottom
* (task_screen.dart) membuat Bottom Sheet
* buat file dart baru profile_sheet.dart di dalam folder components dan buat konten-konten nya
* (task_screen.dart) mengganti Container pada builder showModalBottomSheet menjadi ProfileSheet()
