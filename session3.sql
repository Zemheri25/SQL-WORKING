/*===================================================
	AGGREGATE FUNCTION COUNT,SUM,MIN,MAX, AVG)
====================================================*/
	
	-- COUNT
	-------------------------------------------------------------------------------------------------	
	/* invoices tablosunda kaç adet fatura bulunduğunu döndüren sorgu*/
	
SELECT count(*) as count_invoices
from invoices;
	
SELECT count(distinct Composer)as count_composer 
FROM tracks;

	/* invoices tablosunda kaç adet farklı yıl olduğunu hesaplayan sorguyu yazınız ÖDEV****/

SELECT name as song_name, MIN(Milliseconds) as min_minute
from tracks;	

SELECT max(Grade) as max_grade, min(Grade) as min_grade
from students;

SELECT sum(total) as toplam_gelir
from invoices;

	/* invoices  tablosunda 2009 ile 2013 tarihileri arasındaki faturaların toplam değerini listeyiniz ÖDEVV*****/
	
	
SELECT ROUND(AVG(total), 2) as avarage_total
FROM invoices;

SELECT round(avg(Milliseconds))
FROM tracks;

SELECT Name,Milliseconds
FROM tracks
WHERE Milliseconds > (SELECT avg(Milliseconds)
                       FROM tracks);
					   
SELECT City, count(city)
from employees
GROUP by City; 

SELECT country, count(FirstName)
from customers
GROUP by country
ORDER BY count(FirstName) DESC;

SELECT country, City, count(*)
FROM customers
GROUP BY country,City;

SELECT composer, count(name) as song_count
FROM tracks
where Composer <> "NULL"
GROUP by Composer;


SELECT BillingCountry,  round(avg(total), 2)
FROM invoices
WHERE InvoiceDate BETWEEN '2009-01-01' and '2011-12-31 23:59:59'
GROUP by BillingCountry;

/*===================================================
        JOINS
====================================================*/
    
--     Join islemleri farkli tablolardan secilen sutunlar ile yeni bir tablo 
--     olusturmak icin kullanilabilir.
--     
--     JOIN islemleri Iliskisel Veritabanlari icin cok onemli bir ozelliktir. Çunku
--    	Foreign Key'ler ile iliskili olan tablolardan istenilen sutunlari cekmek 
--     icin JOIN islemleri kullanilabilir.

--     Standart SQL'de en çok kullanılan Join islemleri:
--   	1) FULL JOIN:  Tablodaki tum sonuclari gosterir
--     2) INNER JOIN:  Tablolardaki ortak olan sonuc kumesini gosterir
--     3) LEFT JOIN:  Ilk tabloda (Sol) olup digerinde olmayan sonuclari gosterir
--     4) RIGHT JOIN: Sadece Ikinci tabloda olan tum sonuclari gosterir.

--		NOT: SQLite Sadece INNER, LEFT VE CROSS JOIN İşlemlerini desteklemektedir.
 
 /*===================================================*/   

  /* araclar.db adındaki veritabanını kullanarak Markalar ve Siparisler tablolarındaki 
 marka_id'si ayni olan kayıtların marka_id, marka_adi, siparis_adedi ve siparis_tarihi   
 bilgilerini  listeleyen bir sorgu yaziniz.*/
 
SELECT * FROM siparisler;


SELECT  markalar.marka_id, markalar.marka_adi, siparisler.siparis_adedi, siparisler.siparis_tarihi
FROM markalar
JOIN siparisler
on markalar.marka_id = siparisler.marka_id;







