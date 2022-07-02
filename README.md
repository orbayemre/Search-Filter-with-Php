# Search-Filter-with-Php
#
### view/script.js
Sayfanın dinamikliğini sağlayan yapıları içerir.
* **add ()**  
 Filtreleme işleminin sonuçlarını DOM yapısını kullanarak sayfaya ekleyen fonksiyondur.  
* **filterToggle()**  
 Fitreleme yapılarını içeren etiketleri açılır kapanır yapan fonksiyondur.
#
### controller/getRequest.js
Kullanıcıdan gelen filtreleme isteklerinin değerlerini tutar.
#
### controller/SendRequest.js
Filtreleme değerlerini model’daki dosyalara iletir.
* **fetchResults()**
 Parametre olarak aldığı verileri ajax yapısını kullanarak requestTable.php dosyasına istek atan fonksiyondur.
#
### model/databaseConnection.php
Database ile bağlantıyı sağlar.
* **connect()**
 Bir obje aracılığıyla database bağlantıyı sağlayan ve bu objeyi geri döndüren fonksiyondur.
#
### model/fullTable.php
Veritabanında bulunan tablodaki tüm ürünleri getir.
* getTbl()
 Tablodaki tüm değerleri döndüren fonksiyondur.
#
### model/requestTable.php
Gelen filtreleme verilerini databasede sorgulatır.
