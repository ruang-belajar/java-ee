# Session

_Session_ adalah fitur yang memungkinkan kita memiliki variabel yang aktif selama user terhubung mengakses server.

Penggunaan _session_ yang umum adalah untuk menyimpan sesi login user.

## Set Attribute Session
Contoh perintah untuk set nilai attribute session:

```jsp
// menyimpan string `Budi` ke dalam session dengan nama atribut `nama`
session.setAttribute("nama", "Budi");
```

## Membaca Attribute Session

Contoh perintah untuk membaca nilai attribute session

```jsp
// cara 1
String nama = session.getAttribute("nama").toString();

// cara 2
String nama = (String)session.getAttribute("nama");
```

Pada perintah di atas, jika atribute data `nama` belum diisi, maka Java akan menampilkan runtime error. Untuk mencegah hal itu terjadi, Anda bisa melakukan pengecekan terlebih dahulu apakah atribut tersebut sudah terisi data atau belum

```jsp
String nama;
if(session.getAttribute("nama")==null) {
    nama = "(kosong)";
} else {
    nama = session.getAttribute("nama").toString();
}
```

## Menghapus Attribute Session
Contoh  perintah untuk menghapus attribut session

```jsp
session.removeAttribute("nama");
```

**Referensi:**
- https://www.geeksforgeeks.org/jsp-session-implict-object/
