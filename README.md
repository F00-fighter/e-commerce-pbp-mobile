<details>
  <summary>Tugas 7</summary>
  1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

  Stateless Widget adalah widget yang bersifat immutable yaitu setelah widget ini dibuat maka widget itu tidak akan pernah mengalami perubahan state atau keadaan selama siklus hidupnya. Stateless widget biasanya digunakan untuk UI element yang tetap dan tidak butuh perubahan atau tidak dinamis.

  Stateful Widget adalah widget yang mutable dimana widget ini memiliki state yang dapat diperbarui selama siklus hidupnya. Setiap kali state diperbarui, widget akan dibangun ulang. Stateful widget cocok untuk elemen UI yang perlu memperbarui diri secara dinamis. Contohnya ketika data atau input pengguna berubah.

  2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Scaffold - Struktur dasar halaman yang di kode terdiri dari appBar dan body
Material - Struktur berbentuk kotak yang di kode terdiri dari child berisi beberapa container untuk menyimpan icon dan text.  Widget ini digunakan sebagai button pada tugas ini.
AppBar - Header di bagian atas page.
Text - Digunakan untuk menampilkan text pada layar
Icon - Menampilkan icon tertentu. Pada tugas ini digunakan untuk icon ketiga tombol.
Padding - Menambahkan jarak di sekitar widget lain yang mana dapat juga dipakai untuk memberikan jarak antara widget dalam layout.
SizedBox - Memberikan ruang kosong dengan ukuran tertentu. Digunakan untuk memberi jarak antara elemen.
InkWell - Membuat area di dalam Material dapat ditekan dan menunjukan ripple effect. Digunakan pada ItemCard untuk membuat card tersebut interaktif.
SnackBar - Dipakai untuk memberikan pesan sementara di bagian bawah layar ketika ItemCard ditekan.
Container - Menyediakan wadah untuk mengatur ukuran, padding, dan background colour. Disini dipakai untuk menyusun tata letak icon dan text dalam ItemCard.
MediaQuery - Memberikan informasi tentang ukuran layar device. Di tugas ini dipakai untuk menentukan lebar infocard berdasarkan lebar layar.

  3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() digunakan untuk memberi perintah ke Flutter bahwa ada perubahan state yang mana berarti UI ada pembaruan dimana Flutter akan re-render widget yang diperbarui. Semua variable yang dideclare dalam state bisa berubah nilainya.

 4. Jelaskan perbedaan antara const dengan final.
const digunakan untuk mendeklarasikan nilai yang bersifat konstan yaitu nilainya harus sudah ditentukan pada saat compiletime.

final digunakan untuk mendeklarasikan nilainya yang ditetapkan sekali pada runtime.

 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
Pertama dibuat dulu flutter project pada android studio lalu mengubah isi library agar terdiri dari main.dart dan menu.dart. Pada main.dart hanya dipakai untuk menaruh setting app them dan memanggil fungsi dari menu.dart yaitu myHomePage sebagai page home yang mana akan mendisplay semua widget yang sudah ditentukan untuk homepage.

Pada menu.dart dibuat widget pertama menggunakan scaffold untuk membuat tampilan header dan body homepage. Lalu sebelum ke body dibuat class ItemHomePage dengan attribute name, icon, dan color. Class ini akan dipakai sebagai tombol yang diperlukan pada homepage. ItemHomePage ini memakai class lain yaitu ItemCard yang mana widget ini dibuat menggunakan Material agar dapat memakai widget InkWell untuk memberi action ketika ditekan dengan memanggin ScaffolMessenger untuk menampilkan message snackBar. ItemHomePage tadi di declare dengan menggunakan List<ItemHomepage> yang berisi 3 element yaitu 3 tombol yang diminta oleh checklist tugas. Terakhir list ini dipanggil dengan menggunakan GridView agar dapat ditentukan padding, spacing, etc.





</details>
