# Frequently Asked Question (FAQ)

**Masalah:** Pada saat _Running Web_, selalu muncul menanyakan _Username_ dan _Password_, tapi meskipun sudah dimasukan _Username_ dan _Password_ dengan benar, pertanyaan itu selalu muncul.

**Solusi:**
Hapus koneksi Server dari Netbeans ke Tomcat, kemudian buat ulang untuk memaksa setup ulang _username_. Caranya:
1. Di Netbeans, klik _Tools - Servers_
2. Pilih _Apache Tomcat or TomEE_
3. klik _Remove Server_
4. Buat kembali koneksi server, klik _Add Server_. Check _Setup koneksi ke server dari Netbeans_ di [Panduan Setup](setup.md)