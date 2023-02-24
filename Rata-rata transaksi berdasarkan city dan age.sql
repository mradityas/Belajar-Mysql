select pengguna.city,pengguna.age,count(transaksi.order_id) as avg_tf_per_pengguna
from transaksi
left join pengguna
on transaksi.user_id = pengguna.user_id
group by pengguna.city, pengguna.age