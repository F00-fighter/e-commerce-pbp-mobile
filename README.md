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

<details>
  <summary>Tugas 9</summary>
  1. Pentingnya Membuat Model untuk Pengambilan/Pengiriman Data JSON
  Pertama karena model dibuat dan terdefinisi oleh kita maka data tersebut memiliki struktur dan validasi bila dikirim atau diterima dari backend. Hal tersebut mempermudah pengelolaan dan manipulasi data pada app. Lalu     dengan adanya model, data yang diterima bisa dipastikan memiliki bentuk dan tipe yang diharapkan karena sudah terdefinisi fields atau bentuknya itu seperti apa oleh kita. Jika model tidak dibuat, meskipun tidak selalu terjadi error, data yang dikirim atau diminta bisa saja inconsistent dan berpotensi error saat parsing atau pengolahan data yang tidak sesuai format.
  
2. Fungsi dari Library http
   Tentunya library http memungkinkan flutter app untuk mengirimkan permintaan GET, POST, dan jenis lainnya ke server Django. Library ini memungkinkan app flutter saya untuk memproses data yang dikirim server, termasuk data JSON. Lalu dengan library ini dapat ditambahkan header khusus, seperti token autentikasi, dan juga pengiriman payload yang dikodekan dalam format JSON.

3. Fungsi CookieRequest

CookieRequest adalah komponen dari package pbp_django_auth yang digunakan untuk mengelola session dan autentikasi user. Cara bekerjanya tidak beda dengan cookie request yang dulu dipakai pada proyek django, CookieRequest menyimpan cookie dari respons server sehingga session autentikasi dapat dipertahankan antara tiap request. Nah hal itu memungkinkan app untuk mengetahui apakah user sedang dalam status login atau tidak yang mana itu ddapat dipakai untuk menglimit apa yang user dapat lihat di app. Dengan berbagi instance CookieRequest ke semua komponen Flutter, the whole app dapat mengakses status login user dan melakukan request dengan cookie yang sama.

4. Mekanisme Pengiriman Data dari Input hingga Ditampilkan di Flutter

Proses pengiriman data dalam aplikasi Flutter yang terhubung dengan Django adalah sebagai berikut:

-Data dimasukkan ke dalam form di Flutter.
-Data dikirim ke server Django menggunakan http atau CookieRequest, tergantung pada jenis permintaan (autentikasi atau data biasa).
-Django menerima permintaan dan memproses data di views. Data disimpan atau diproses di models dalam konteks data ini adalah product pada flutter app.
-Django mengirimkan respons JSON ke aplikasi Flutter.
-Flutter menerima data JSON, memprosesnya, dan menampilkan data di UI.

5. Mekanisme Autentikasi: Login, Register, dan Logout

Mekanisme autentikasi melibatkan langkah-langkah berikut:

-Input Data Account di Flutter:
User mengisi form login atau register di aplikasi Flutter lalu data dikirim ke URL autentikasi Django misal 127.0.0.1:8000/auth/login/ atau 127.0.0.1:8000/auth/register/.

-Proses Autentikasi di Django:
Django menerima data input dan memprosesnya menggunakan views. Dalam konteks autentikasi, Django memvalidasi data terhadap database pengguna dan jika valid, Django mengembalikan respons yang mencakup cookie sesi atau token autentikasi.

-Penyimpanan Cookie di Flutter:
Instance CookieRequest di Flutter menyimpan cookie atau token tersebut. Cookie ini digunakan untuk permintaan selanjutnya agar user tetap dalam status login.

-Tampilan Menu di Flutter:
Setelah login berhasil, UI Flutter diperbarui untuk menampilkan menu yang sesuai dengan status pengguna. Untuk logout, Flutter mengirim permintaan ke URL Django 127.0.0.1:8000/auth/logout/, dan cookie dihapus.
</details>
