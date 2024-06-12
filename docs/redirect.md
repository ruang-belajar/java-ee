# Redirect

_Redirect_ adalah perintah untuk mengarahkan halaman web ke halaman lain. Perhatikan contoh berikut:

```java
if(session.getAttribute("login_id")==null) {        
    response.sendRedirect("login.jsp");
}
```

Contoh program di atas membaca variabel/atribut `login_id` pada _session_. Jika tidak ditemukan/`null` maka jangan lanjutkan proses, langsung arahkan ke halaman `login.jsp`.