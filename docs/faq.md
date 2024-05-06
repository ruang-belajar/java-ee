# Frequently Asked Question (FAQ)

**Masalah:** Pada saat _Running Web_, selalu muncul menanyakan _Username_ dan _Password_, tapi meskipun sudah dimasukan _Username_ dan _Password_ dengan benar, pertanyaan itu selalu muncul.

**Solusi:**
Hapus koneksi Server dari Netbeans ke Tomcat, kemudian buat ulang untuk memaksa setup ulang _username_. Caranya:
1. Di Netbeans, klik _Tools - Servers_
2. Pilih _Apache Tomcat or TomEE_
3. klik _Remove Server_
4. Buat kembali koneksi server, klik _Add Server_. Check _Setup koneksi ke server dari Netbeans_ di [Panduan Setup](setup.md)

---

**Masalah:** _javax.servlet.ServletException: java.lang.UnsupportedClassVersionError: `......` has been compiled by a more recent version of the Java Runtime class file version 61.0), this version of the Java Runtime only recognizes class file versions up to 52.0 (unable to load class [`......`])_

**Solusi:** Turunkan versi JDK. Caranya:
1. Persiapan:
   - Klik menu: _Tools - Options_
   - Halaman _Miscelaneous_, tab _Files_
   - _Uncheck_ opsi _Enable auto-scanning of sources_
   - Klik _OK_
2. Downgrade JDK version:
   - Klik menu: _File - Project Properties_
   - Halaman _Sources_, rubah _Source/Binary Format_ ke versi lebih bawah.

**Tabel versi JDK**
| Java SE (JDK)	| Major Version	|
| --- | --- |
| 17	| 61	|
| 16	| 60	|
| 15	| 59	|
| 14	| 58	|
| 13	| 57	|
| 12	| 56	|
| 11	| 55	|
| 10	| 54	|
| 9	| 53	|
| 8	| 52	|
| 7	| 51	|
| 6	| 50	|
| 5.0	| 49	|
| 1.4	| 48	|
| 1.3	| 47	|
| 1.2	| 46	|
| 1.1	| 45	|
| 1.01	| 45	|

---