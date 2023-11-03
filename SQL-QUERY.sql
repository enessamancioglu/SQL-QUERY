/*
1. Product isimlerini (`ProductName`) ve birim başına miktar (`QuantityPerUnit`) değerlerini almak için sorgu yazın.
2. Ürün Numaralarını (`ProductID`) ve Product isimlerini (`ProductName`) değerlerini almak için sorgu yazın. Artık satılmayan ürünleri (`Discontinued`) filtreleyiniz.
3. Durdurulan Ürün Listesini, Ürün kimliği ve ismi (`ProductID`, `ProductName`) değerleriyle almak için bir sorgu yazın.
4. Ürünlerin maliyeti 20'dan az olan Ürün listesini (`ProductID`, `ProductName`, `UnitPrice`) almak için bir sorgu yazın.
5. Ürünlerin maliyetinin 15 ile 25 arasında olduğu Ürün listesini (`ProductID`, `ProductName`, `UnitPrice`) almak için bir sorgu yazın.
6. Ürün listesinin (`ProductName`, `UnitsOnOrder`, `UnitsInStock`) stoğun siparişteki miktardan az olduğunu almak için bir sorgu yazın.
7. İsmi `a` ile başlayan ürünleri listeleyeniz.
8. İsmi `i` ile biten ürünleri listeleyeniz.
9. Ürün birim fiyatlarına %18’lik KDV ekleyerek listesini almak (ProductName, UnitPrice, UnitPriceKDV) için bir sorgu yazın.
10. Fiyatı 30 dan büyük kaç ürün var?
11. Ürünlerin adını tamamen küçültüp fiyat sırasına göre tersten listele
12. Çalışanların ad ve soyadlarını yanyana gelecek şekilde yazdır
13. Region alanı NULL olan kaç tedarikçim var?
14. a.Null olmayanlar?
15. Ürün adlarının hepsinin soluna TR koy ve büyültüp olarak ekrana yazdır.
16. a.Fiyatı 20den küçük ürünlerin adının başına TR ekle
17. En pahalı ürün listesini (`ProductName` , `UnitPrice`) almak için bir sorgu yazın.
18. En pahalı on ürünün Ürün listesini (`ProductName` , `UnitPrice`) almak için bir sorgu yazın.
19. Ürünlerin ortalama fiyatının üzerindeki Ürün listesini (`ProductName` , `UnitPrice`) almak için bir sorgu yazın.
20. Stokta olan ürünler satıldığında elde edilen miktar ne kadardır.
21. Mevcut ve Durdurulan ürünlerin sayılarını almak için bir sorgu yazın.
22. Ürünleri kategori isimleriyle birlikte almak için bir sorgu yazın.
23. Ürünlerin kategorilerine göre fiyat ortalamasını almak için bir sorgu yazın.
24. En pahalı ürünümün adı, fiyatı ve kategorisin adı nedir?
25. En çok satılan ürününün adı, kategorisinin adı ve tedarikçisinin adı
25. En çok satılan ürününün adı, kategorisinin adı ve tedarikçisinin adı
26. Stokta bulunmayan ürünlerin ürün listesiyle birlikte tedarikçilerin ismi ve iletişim numarasını (`ProductID`, `ProductName`, `CompanyName`, `Phone`) almak için bir sorgu yazın.
27. 1998 yılı mart ayındaki siparişlerimin adresi, siparişi alan çalışanın adı, çalışanın soyadı
28. 1997 yılı şubat ayında kaç siparişim var?
29. London şehrinden 1998 yılında kaç siparişim var?
30. 1997 yılında sipariş veren müşterilerimin contactname ve telefon numarası
31. Taşıma ücreti 40 üzeri olan siparişlerim
32. Taşıma ücreti 40 ve üzeri olan siparişlerimin şehri, müşterisinin adı
33. 1997 yılında verilen siparişlerin tarihi, şehri, çalışan adı -soyadı ( ad soyad birleşik olacak ve büyük harf),
34. 1997 yılında sipariş veren müşterilerin contactname i, ve telefon numaraları ( telefon formatı 2223322 gibi olmalı )
35. Sipariş tarihi, müşteri contact name, çalışan ad, çalışan soyad
36. Geciken siparişlerim?
37. Geciken siparişlerimin tarihi, müşterisinin adı
38. 10248 nolu siparişte satılan ürünlerin adı, kategorisinin adı, adedi
39. 10248 nolu siparişin ürünlerinin adı , tedarikçi adı
40. 3 numaralı ID ye sahip çalışanın 1997 yılında sattığı ürünlerin adı ve adeti
41. 1997 yılında bir defasinda en çok satış yapan çalışanımın ID,Ad soyad
42. 1997 yılında en çok satış yapan çalışanımın ID,Ad soyad ****
43. En pahalı ürünümün adı,fiyatı ve kategorisin adı nedir?
44. Siparişi alan personelin adı,soyadı, sipariş tarihi, sipariş ID. Sıralama sipariş tarihine göre
45. SON 5 siparişimin ortalama fiyatı ve orderid nedir?
46. Ocak ayında satılan ürünlerimin adı ve kategorisinin adı ve toplam satış miktarı nedir?
47. Ortalama satış miktarımın üzerindeki satışlarım nelerdir?
48. En çok satılan ürünümün(adet bazında) adı, kategorisinin adı ve tedarikçisinin adı
49. Kaç ülkeden müşterim var
50. 3 numaralı ID ye sahip çalışan (employee) son Ocak ayından BUGÜNE toplamda ne kadarlık ürün sattı?
*/
-- 1
select product_name, quantity_per_unit
from products;

-- 2
select product_id, product_name
from products
where discontinued = 0;

-- 3
select product_id, product_name
from products
where discontinued = 1;

-- 4
select product_id, product_name, unit_price
from products
where unit_price < 20;

-- 5
select product_id, product_name, unit_price
from products
where unit_price < 20 and unit_price > 15;

-- 6
select product_name, units_on_order, units_in_stock
from products
where units_in_stock < units_on_order;

-- 7
select product_name
from products
where product_name like 'a%';

-- 8
select product_name
from products
where product_name like '%i';

-- 9 
select product_name, unit_price, (unit_price * 1.18) as unit_price_kdv
from products;

-- 10 
select count(*) as product_counts
from products
where unit_price > 30;

-- 11 
select lower (product_name) as lower_product_name, unit_price
from products
order by unit_price desc;

-- 12 
select concat(first_name, ' ', last_name) as full_name
from employees;

-- 13 
select count(*) as suppliers_count
from suppliers
where region is null;

-- 14 
select count(*) as suppliers_count
from suppliers
where region is not null;


-- 15 
select concat('TR ', upper(product_name)) as tr_product_name
from products;

-- 16 
select concat('TR ', product_name) as tr_product_name
from products
where unit_price < 20;


-- 17
select product_name, unit_price
from products
where unit_price = (select max(unit_price) from products);

-- 18
select product_name, unit_price
from products
order by unit_price desc
limit 10;

-- 19
select product_name, unit_price
from products
where unit_price > (select avg(unit_price) from products);

-- 20
SELECT product_name, units_in_stock - units_on_order AS quantity_sold
FROM products
WHERE units_in_stock > units_on_order;

-- 21
select product_id, product_name
from products
where discontinued = 0 or discontinued = 1;

-- 22
select 
    (select count(*) from products where discontinued = '0') as cont,
    (select count(*) from products where discontinued = '1') as discont;
select products.product_name, categories.category_name from products
inner join categories on products.category_id = categories.category_id;


-- 23
select categories.category_name, avg (products.unit_price) as avg_price from products
inner join categories on products.category_id = categories.category_id
GROUP BY Categories.Category_Name;

-- 24
select products.product_name, products.unit_price, categories.category_name
from products
inner join categories on products.category_id = categories.category_id
order by products.unit_price desc
limit 1;

-- 25
select products.product_name, categories.category_name, suppliers.company_name,
sum(order_details.quantity) as total_quantity
from products
inner join categories on products.category_id = categories.category_id
inner join suppliers on products.supplier_id = suppliers.supplier_id
inner join order_details on products.product_id = order_details.product_id
group by products.product_name, categories.category_name, suppliers.company_name
limit 1;


-- 26
select products.supplier_id, products.units_in_stock, products.product_id,
products.product_name, suppliers.company_name, suppliers.phone
from products
inner join suppliers on products.supplier_id = suppliers.supplier_id
where products.units_in_stock = 0;

-- 27
select orders.order_date, orders.ship_address, employees.first_name, employees.last_name
from orders inner join employees on employees.employee_id = orders.employee_id
where orders.order_date >= '1998-03-01' and orders.order_date <= '1998-03-31';


-- 28
select count(order_date) from orders
where order_date >= '1997-02-01' and order_date <= '1997-02-28';

-- 29
select count(ship_city) from orders
where order_date >= '1998-01-01' and order_date <= '1998-12-31' and ship_city = 'London';

-- 30
select customers.contact_name, customers.phone, orders.order_date from customers
inner join orders on customers.customer_id = orders.customer_id
where order_date >= '1997-01-01' and order_date <= '1997-12-31';

-- 31
select * from orders
where freight > 40;

-- 32
select customers.contact_name, orders.ship_city, orders.freight from orders 
inner join customers on orders.customer_id = customers.customer_id
where freight >= 40
order by orders.freight;

-- 33
select upper(concat(employees.last_name, ' ' , employees.first_name)),
orders.order_date, orders.ship_city
from orders inner join employees 
on orders.employee_id = employees.employee_id
where order_date >= '1997-01-01' and order_date <= '1997-12-31';


-- 34
select customers.contact_name, regexp_replace(customers.phone, '[(). -]', '', 'g')
from orders
inner join customers
on orders.customer_id = customers.customer_id
where orders.order_date >= '1997-01-01' and orders.order_date <= '1997-12-31';


-- 35
select orders.order_date, customers.contact_name,
employees.first_name, employees.last_name
from orders
inner join customers 
on orders.customer_id = customers.customer_id
inner join employees 
on orders.employee_id = employees.employee_id;

-- 36
select shipped_date, required_date from orders
where shipped_date > required_date;


-- 37
select orders.shipped_date, orders.required_date, customers.contact_name
from orders 
inner join customers 
on orders.customer_id = customers.customer_id
where shipped_date > required_date;


-- 38
select order_details.order_id, products.product_name, categories.category_id,
products.units_on_order from  order_details
inner join products 
on order_details.product_id = products.product_id
inner join categories
on products.category_id = categories.category_id
where order_details.order_id = 10248;

-- 39
select suppliers.company_name, order_details.order_id, products.product_name
from order_details
inner join products
on order_details.product_id = products.product_id
inner join suppliers
on products.supplier_id = suppliers.supplier_id
where order_id = 10248;


-- 40
select employees.employee_id, employees.first_name, employees.last_name,
products.product_name, order_details.quantity from  orders 
inner join employees 
on orders.employee_id = employees.employee_id
inner join order_details
on orders.order_id = order_details.order_id
inner join products
on order_details.product_id = products.product_id
where employees.employee_id = 3 and orders.order_date >= '1997-01-01' and
orders.order_date < '1998-01-01';


-- 41
select employees.employee_id, employees.first_name, employees.last_name,
order_details.quantity, orders.order_date from orders
inner join employees
on orders.employee_id = employees.employee_id
inner join order_details
on order_details.order_id = orders.order_id
inner join products
on order_details.product_id = products.product_id
where date_part('year', order_date) = 1997
order by order_details.quantity desc limit 1;



-- 42
select employees.employee_id, employees.first_name, employees.last_name,
sum(order_details.quantity) from order_details
inner join orders
on order_details.order_id = orders.order_id
inner join employees 
on orders.employee_id = employees.employee_id
where date_part('year', order_date) = 1997 
group by employees.employee_id
order by sum(order_details.quantity) desc limit 1;

-- 43
select products.product_name, products.unit_price, categories.category_name
from products
inner join categories on products.category_id = categories.category_id
order by unit_price desc
limit 1;


-- 44
select employees.first_name, employees.last_name,
orders.order_id, orders.order_date from orders
inner join employees
on orders.employee_id = employees.employee_id
order by order_date;


-- 45
select avg(products.unit_price),
orders.order_date, orders.order_id
from orders
inner join order_details
on order_details.order_id = orders.order_id
inner join products 
on order_details.product_id = products.product_id
group by orders.order_date, orders.order_id 
order by orders.order_date desc limit 5;


-- 46
select sum(order_details.quantity), categories.category_id, categories.category_name,
products.product_name from order_details
inner join orders 
on order_details.order_id = orders.order_id
inner join products 
on order_details.product_id = products.product_id
inner join categories 
on products.category_id = categories.category_id
where date_part('month', order_date) = 1 
group by categories.category_id, categories.category_name, products.product_name;



-- 47
select quantity from order_details
where quantity > (select avg(quantity)
from order_details)
order by quantity;


-- 48
select products.product_name, categories.category_name,
suppliers.company_name, order_details.quantity from order_details
inner join orders 
on order_details.order_id = orders.order_id
inner join products 
on order_details.product_id = products.product_id
inner join categories
on products.category_id = categories.category_id
inner join suppliers 
ON products.supplier_id = suppliers.supplier_id
order by quantity desc limit 1;


-- 49
select count(distinct country)
from customers;


-- 50
select sum(order_details.quantity * products.unit_price) from orders
inner join employees
on orders.employee_id = employees.employee_id
inner join order_details
on order_details.order_id = orders.order_id
inner join products
on order_details.product_id = products.product_id
where employees.employee_id = 3 and order_date >= '1998.01.01';