# Project 1 - Toko ATK

![](res/project-1-0.png)

Pada project ini, kita akan membuat sebuah web sederhana dengan tema "Toko Buku".

Web ini akan digunakan oleh admin sebuah toko ATK, untuk mencatat transaksi penjualan dan pembelian ATK.

Operator toko ATK ini ada lebih dari satu, masing-masing punya username dan password masing-masing.

> ℹ Untuk project ini kita akan menggunakan folder `tokoatk` pada _Web Pages_ dan _Source Packages_

## Setup Database
Buat database sebagai berikut:

![](res/project-1-1.png)

## Class Diagram

Pelajari class diagram berikut

```mermaid
    classDiagram
        StockDetail -- Barang
        Sales -- SalesDetail
        Sales -- User
        Stock -- User
        SalesDetail -- Barang
        Stock -- StockDetail
        class User {
            -String username
            -String fullname
            +boolean login(String username, String password)
            +String getFullname()
            +String getUsername()
            +boolean baca(String id)
            +boolean updateNama()
            +boolean updatePassword(String password)
            +boolean tambah(String password)
            +boolean hapus()
        }
        class Sales {
            -String id
            -Datetime waktu
            -String username
            +Datetime getWaktu()
            +String getUsername()
            +boolean baca(String id)
            +boolean tambah(String username)
            +boolean hapus()
            +boolean addDetail(String barangId, Integer qty, Integer harga)
            +Array<SalesDetail> detail
            -void bacaDetail()
        }
        class SalesDetail {
            -String id
            -String barangId
            -Integer qty
            -Integer harga
            +String getBarangId();
            +String getBarangNama();
            +String getQty();
            +String getHarga();
            +String getTotal();
            +boolean add(String salesId, String barangId, Integer qty, Integer harga)
            +boolean baca(String id)
            +Array<SalesDetail> loadDetail(String salesId)
            +boolean hapus()
        }
        class Barang {
            +String id
            +String nama
            +String jenis
            +Integer harga
            +boolean baca(String id)
            +boolean update()
            +boolean tambah()
            +boolean hapus()
        }
        class Stock {
            +String id
            +Datetime waktu
            +String username
            +boolean baca(String id)
            +boolean tambah(String username)
            +boolean hapus()
            +boolean addDetail(String barangId, Integer qty, Integer harga)
            +Array<SalesDetail> detail
            -void loadDetail()
        }
        class StockDetail {
            +String id
            +String barangId
            +Integer qty
            +Integer harga
            +String getBarangNama();
        }

```

## Contoh Program

file: `Source Packages\tokoatk\User.java`
```java

```