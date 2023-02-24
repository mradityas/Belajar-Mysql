create table tipe_tf(
jumlah_transaksi int,
Jumlah_user int,
tipe_tf varchar(50)
);
Select count(order_id) as jumlah_transaksi,Max(user_id) as Jumlah_user,
CASE
    WHEN bank_ewallet_trx = 'BRI' then 'Bank'
    WHEN bank_ewallet_trx = 'MANDIRI' then 'Bank'
    WHEN bank_ewallet_trx = 'BNI' then 'Bank'
    WHEN bank_ewallet_trx = 'PERMATA' then 'Bank'
    ELSE 'E-Wallet'
END as tipe_tf
FROM transaksi
group by tipe_tf;

