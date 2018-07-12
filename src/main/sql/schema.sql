create database seckill;
use seckill;

create table seckill(
`seckill_id` bigint NOT NULL AUTO_INCREMENT COMMENT '商品库存id',
`name` varchar(120) NOT NULL COMMENT '商品名称',
`number` int NOT NULL COMMENT '库存数量',
`start_time` timestamp not null COMMENT '秒杀开始时间',
`end_time` timestamp not null COMMENT '秒杀结束时间',
`create_time` timestamp not null default CURRENT_TIMESTAMP COMMENT '创建时间',
PRIMARY KEY(seckill_id),
key idx_start_time(start_time),
key idx_end_time(end_time),
key idx_create_time(create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='秒杀库存表'; 

insert into seckill(name,number,start_time,end_time)
values
("1000元秒杀iPhonex",100,'2018-7-11 00:00:00','2018-7-13 00:00:00'),
("500元秒杀iPad2",200,'2018-7-11 00:00:00','2018-7-13 00:00:00'),
("300元秒杀小米6",300,'2018-7-11 00:00:00','2018-7-13 00:00:00'),
("200元秒杀红米note3",400,'2018-7-11 00:00:00','2018-7-13 00:00:00');

create table success_killed(
`seckill_id` bigint NOT NULL COMMENT '秒杀商品id',
`user_phone` bigint not null COMMENT '用户手机号',
`state` tinyint not null DEFAULT -1 COMMENT '状态标识：-1：无效  0：成功 1：已付款 2：已发货 ',
`create_time` timestamp not null COMMENT '创建时间',
PRIMARY KEY(seckill_id,user_phone),
key idx_create_time(create_time)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀成功明细表';

mysql -uroot -p;