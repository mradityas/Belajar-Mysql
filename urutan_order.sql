select pengguna.username, transaksi.order_id as urutan_order, pengguna.user_id
from pengguna
join transaksi
on transaksi.user_id = pengguna.user_id
group by  pengguna.username,transaksi.order_id, pengguna.user_id