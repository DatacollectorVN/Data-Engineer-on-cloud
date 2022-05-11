USE temp_db;

-- DUMP TO customers
INSERT INTO customers (customer_id,customer_unique_id,customer_zip_code_prefix,customer_city,customer_state) VALUES 
('06b8999e2fba1a1fbc88172c00ba8bc7','861eff4711a542e4b93843c6dd7febb0',14409,'franca','SP')
,('18955e83d337fd6b2def6b18a428ac77','290c77bc529b7ac935b93aa66c333dc3',9790,'sao bernardo do campo','SP')
,('4e7b3e00288586ebd08712fdd0374a03','060e732b5b29e8181a18229c7b0b2b5e',1151,'sao paulo','SP')
,('b2b6027bc5c5109e529d4dc6358b12c3','259dac757896d24d7702b9acbbff3f3c',8775,'mogi das cruzes','SP')
,('4f2d8ab171c80ec8364f7c12e35b23ad','345ecd01c38d18a9036ed96c73b8d066',13056,'campinas','SP')
,('879864dab9bc3047522c92c82e1212b8','4c93744516667ad3b8f1fb645a3116a4',89254,'jaragua do sul','SC')
,('fd826e7cf63160e536e0908c76c3f441','addec96d2e059c80c30fe6871d30d177',4534,'sao paulo','SP')
,('5e274e7a0c3809e14aba7ad5aae0d407','57b2a98a409812fe9618067b6b8ebe4f',35182,'timoteo','MG')
,('5adf08e34b2e993982a47070956c5c65','1175e95fb47ddff9de6b2b06188f7e0d',81560,'curitiba','PR')
,('4b7139f34592b3a31687243a302fa75b','9afe194fb833f79e300e37e580171f22',30575,'belo horizonte','MG')
,('9fb35e4ed6f0a14a4977cd9aea4042bb','2a7745e1ed516b289ed9b29c7d0539a5',39400,'montes claros','MG')
,('5aa9e4fdd4dfd20959cad2d772509598','2a46fb94aef5cbeeb850418118cee090',20231,'rio de janeiro','RJ')
,('b2d1536598b73a9abd18e0d75d92f0a3','918dc87cd72cd9f6ed4bd442ed785235',18682,'lencois paulista','SP')
,('eabebad39a88bb6f5b52376faec28612','295c05e81917928d76245e842748184d',5704,'sao paulo','SP')
,('1f1c7bf1c9b041b292af6c1c4470b753','3151a81801c8386361b62277d7fa5ecf',95110,'caxias do sul','RS')
,('206f3129c0e4d7d0b9550426023f0a08','21f748a16f4e1688a9014eb3ee6fa325',13412,'piracicaba','SP')
,('a7c125a0a07b75146167b7f04a7f8e98','5c2991dbd08bbf3cf410713c4de5a0b5',22750,'rio de janeiro','RJ')
,('c5c61596a3b6bd0cee5766992c48a9a1','b6e99561fe6f34a55b0b7da92f8ed775',7124,'guarulhos','SP')
,('9b8ce803689b3562defaad4613ef426f','7f3a72e8f988c6e735ba118d54f47458',5416,'sao paulo','SP')
,('49d0ea0986edde72da777f15456a0ee0','3e6fd6b2f0d499456a6a6820a40f2d79',68485,'pacaja','PA')
,('154c4ded6991bdfa3cd249d11abf4130','e607ede0e63436308660236f5a52da5e',88034,'florianopolis','SC')
,('690172ab319622688d3b4df42f676898','a96d5cfa0d3181817e2b946f921ea021',74914,'aparecida de goiania','GO');

-- DUMP TO geolocation
INSERT INTO geolocation (geolocation_zip_code_prefix,geolocation_lat,geolocation_lng,geolocation_city,geolocation_state) VALUES 
(1037,-24,-47,'sao paulo','SP')
,(1046,-24,-47,'sao paulo','SP')
,(1046,-24,-47,'sao paulo','SP')
,(1041,-24,-47,'sao paulo','SP')
,(1035,-24,-47,'sao paulo','SP')
,(1012,-24,-47,'sÃ£o paul','SP')
,(1047,-24,-47,'sao paulo','SP')
,(1013,-24,-47,'sao paulo','SP')
,(1029,-24,-47,'sao paulo','SP')
,(1011,-24,-47,'sao paulo','SP')
,(1013,-24,-47,'sao paulo','SP')
,(1032,-24,-47,'sao paulo','SP')
,(1014,-24,-47,'sao paulo','SP')
,(1012,-24,-47,'sao paulo','SP')
,(1037,-24,-47,'sÃ£o paul','SP')
,(1046,-24,-47,'sao paulo','SP')
,(1039,-24,-47,'sao paulo','SP')
,(1024,-24,-47,'sÃ£o paul','SP')
,(1009,-24,-47,'sao paulo','SP')
,(1046,-24,-47,'sao paulo','SP')
,(1046,-24,-47,'sao paulo','SP')
,(1020,-24,-47,'sÃ£o paul','SP')
,(1011,-24,-47,'sÃ£o paul','SP')
,(1043,-24,-47,'sÃ£o paul','SP')
,(1050,-24,-47,'sao paulo','SP')
,(1045,-24,-47,'sao paulo','SP')
,(1009,-24,-47,'sao paulo','SP');

-- DUMP TO order_items
INSERT INTO order_items (order_id,order_item_id,product_id,seller_id,shipping_limit_date,price,freight_value,order_purchase_timestamp) VALUES 
('00010242fe8c5a6d1ba2dd792cb16214',1,'4244733e06e7ecb4970a6e2683c13e61','48436dade18ac8b2bce089ec2a041202','2017-09-19 05:45:35.0',59,13,'2017-09-13 04:59:02.0')
,('00018f77f2f0320c557190d7a144bdd3',1,'e5f2d52b802189ee658865ca93d83a8f','dd7ddc04e1b6c2c614352b383efe2d36','2017-05-03 07:05:13.0',240,20,'2017-04-26 06:53:06.0')
,('000229ec398224ef6ca0657da4fc703e',1,'c777355d18b72b67abbeef9df44fd0fd','5b51032eddd242adc84c38acab88f23d','2018-01-18 10:48:30.0',199,18,'2018-01-14 10:33:31.0')
,('00024acbcdf0a6daa1e931b038114c75',1,'7634da152a4610f1595efa32f14722fc','9d7a1d34a5052409006425275ba1c2b4','2018-08-15 06:10:18.0',13,13,'2018-08-08 06:00:35.0')
,('00042b26cf59d7ce69dfabb4e55b4fd9',1,'ac6c3623068f30de03045865e4e10089','df560393f3a51e74553ab94004ba5c87','2017-02-13 09:57:51.0',200,18,'2017-02-04 09:57:51.0')
,('00048cc3ae777c65dbb7d2a0634bc1ea',1,'ef92defde845ab8450f9d70c526ef70f','6426d21aca402a131fc0a5d0960a3c90','2017-05-22 23:55:27.0',22,13,'2017-05-15 17:42:34.0')
,('00054e8431b9d7675808bcb819fb4a32',1,'8d4f2bb7e93e6710a28f34fa83ee7d28','7040e82f899a04d1b434b795a43b4617','2017-12-14 08:10:31.0',20,12,'2017-12-10 07:53:48.0')
,('000576fe39319847cbb9d288c5617fa6',1,'557d850972a7d6f792fd18ae1400d9b6','5996cddab893a4652a15592fb58ab8db','2018-07-10 08:30:45.0',810,71,'2018-07-04 08:08:27.0')
,('0005a1a1728c9d785b8e2b08b904576c',1,'310ae3c140ff94b03219ad0adc3c778f','a416b6a846a11724393025641d4edd5e','2018-03-26 14:31:29.0',146,12,'2018-03-19 14:40:33.0')
,('0005f50442cb953dcd1d21e1fb923495',1,'4535b0e1091c278dfd193e5a1d63b39f','ba143b05f0110f0dc71ad71b4466ce92','2018-07-06 10:10:56.0',54,11,'2018-07-02 09:59:39.0')
,('00061f2a7bc09da83e415a52dc8a4af1',1,'d63c1011f49d98b976c352955b1c4bea','cc419e0650a3c5ba77189a1882b7556a','2018-03-29 18:28:09.0',60,9,'2018-03-24 18:16:10.0')
,('00063b381e2406b52ad429470734ebd5',1,'f177554ea93259a5b282f24e33f65ab6','8602a61d680a10a82cceeeda0d99ea3d','2018-07-31 13:30:39.0',45,13,'2018-07-27 13:21:27.0')
,('0006ec9db01a64e59a68b2c340bf65a7',1,'99a4788cb24856965c36a24e339b6058','4a3ca9315b744ce9f8e9374361493884','2018-07-26 13:24:20.0',74,23,'2018-07-24 13:04:17.0')
,('0008288aa423d2a3f00fcb17cd7d8719',1,'368c6c730842d78016ad823897a372db','1f50f920176fa81dab994f9023523100','2018-02-20 22:55:52.0',50,13,'2018-02-13 18:10:21.0')
,('0008288aa423d2a3f00fcb17cd7d8719',2,'368c6c730842d78016ad823897a372db','1f50f920176fa81dab994f9023523100','2018-02-20 22:55:52.0',50,13,'2018-02-13 18:10:21.0')
,('0009792311464db532ff765bf7b182ae',1,'8cab8abac59158715e0d70a36c807415','530ec6109d11eaaf87999465c6afee01','2018-08-17 08:15:10.0',100,28,'2018-08-14 16:43:09.0')
,('0009c9a17f916a706d71784483a5d643',1,'3f27ac8e699df3d300ec4a5d8c5cf0b2','fcb5ace8bcc92f75707dc0f01a27d269','2018-05-02 05:31:53.0',639,11,'2018-04-25 05:10:41.0')
,('000aed2e25dbad2f9ddb70584c5a2ded',1,'4fa33915031a8cde03dd0d3e8fb27f01','fe2032dab1a61af8794248c8196565c9','2018-05-16 16:57:03.0',144,9,'2018-05-11 16:33:38.0')
,('000c3e6612759851cc3cbb4b83257986',1,'b50c950aba0dcead2c48032a690ce817','218d46b86c1881d022bce9c68a7d4b15','2017-08-20 23:33:13.0',99,14,'2017-08-12 06:08:57.0')
,('000e562887b1f2006d75e0be9558292e',1,'5ed9eaf534f6936b51d0b6c5e4d5c2e9','8cbac7e12637ed9cffa18c7875207478','2018-02-28 08:08:37.0',25,16,'2018-02-22 07:54:42.0')
,('000e63d38ae8c00bbcb5a30573b99628',1,'553e0e7590d3116a072507a3635d2877','1c129092bf23f28a5930387c980c0dfc','2018-03-29 16:07:49.0',48,9,'2018-03-23 15:48:26.0')
,('000e906b789b55f64edcb1f84030f90d',1,'57d79905de06d8897872c551bfd09358','ea8482cd71df3c1969d7b9473ff13abc','2017-11-27 15:09:02.0',22,12,'2017-11-21 14:54:23.0')
,('000f25f4d72195062c040b12dce9a18a',1,'1c05e0964302b6cf68ca0d15f326c6ba','7c67e1448b00f6e969d365cea6b010ab','2018-03-21 07:10:11.0',120,44,'2018-03-07 06:33:13.0')
,('001021efaa8636c29475e7734483457d',1,'5d7c23067ed3fc8c6e699b9373d5890b','6560211a19b47992c3666cc44a7e94c0','2018-03-05 05:35:41.0',49,15,'2018-02-27 05:27:14.0')
,('0010b2e5201cc5f1ae7e9c6cc8f5bd00',1,'5a419dbf24a8c9718fe522b81c69f61a','3504c0cb71d7fa48d967e0e4c94d59d9','2017-09-15 14:04:37.0',49,17,'2017-09-11 13:39:33.0')
,('00119ff934e539cf26f92b9ef0cdfed8',1,'21b1c2f67a9aafb5af0eb06c13b9dbda','c864036feaab8c1659f65ea4faebe1da','2017-08-10 20:35:12.0',220,17,'2017-08-05 20:42:49.0')
,('0011d82c4b53e22e84023405fb467e57',1,'c389f712c4b4510bc997cee93e8b1a28','bfd27a966d91cfaafdb25d076585f0da','2018-01-29 17:51:25.0',289,26,'2018-01-16 17:43:23.0')
,('00125cb692d04887809806618a2a145f',1,'1c0c0093a48f13ba70d0c6b0a9157cb7','41b39e28db005d9731d9d485a83b4c38','2017-03-29 09:05:42.0',110,26,'2017-03-23 08:21:17.0')
,('00130c0eee84a3d909e75bc08c5c3ca1',1,'89321f94e35fc6d7903d36f74e351d40','16090f2ca825584b5a147ab24aa30c86','2018-06-14 01:16:24.0',28,8,'2018-06-11 17:17:00.0')
,('0013503b13da1eac686219390b7d641b',1,'38afdf723b95d455b418a0f57d623c6b','1554a68530182680ad5c8b042c3ab563','2017-12-12 23:16:36.0',120,17,'2017-12-05 19:40:59.0')
,('00137e170939bba5a3134e2386413108',1,'672e757f331900b9deea127a2a7b79fd','e59aa562b9f8076dd550fcddf0e73491','2017-11-30 02:30:55.0',397,25,'2017-11-24 12:50:38.0')
,('001427c0ec99cf8af737bd88e92fd444',1,'28b4eced95a52d9c437a4caf9d311b95','77530e9772f57a62c906e1c21538ab82','2018-04-12 15:08:28.0',60,23,'2018-04-07 14:51:22.0')
,('00143d0f86d6fbd9f9b38ab440ac16f5',1,'e95ee6822b66ac6058e2e4aff656071a','a17f621c590ea0fab3d5d883e1630ec6','2017-10-20 12:07:52.0',21,15,'2017-10-16 11:29:43.0')
,('00143d0f86d6fbd9f9b38ab440ac16f5',2,'e95ee6822b66ac6058e2e4aff656071a','a17f621c590ea0fab3d5d883e1630ec6','2017-10-20 12:07:52.0',21,15,'2017-10-16 11:29:43.0')
,('00143d0f86d6fbd9f9b38ab440ac16f5',3,'e95ee6822b66ac6058e2e4aff656071a','a17f621c590ea0fab3d5d883e1630ec6','2017-10-20 12:07:52.0',21,15,'2017-10-16 11:29:43.0')
,('0014ae671de39511f7575066200733b7',1,'23365beed316535b4105bd800c46670e','92eb0f42c21942b6552362b9b114707d','2017-05-28 23:15:24.0',17,14,'2017-05-22 09:49:03.0')
,('0015ebb40fb17286bea51d4607c4733c',1,'50fd2b788dc166edd20512370dac54df','8b321bb669392f5163d04c59e235e066','2018-01-18 05:11:24.0',22,15,'2018-01-14 05:01:36.0');

-- DUMP TO order_payments
INSERT INTO order_payments (order_id,payment_sequential,payment_type,payment_installments,payment_value,order_purchase_timestamp) VALUES 
('d1f54c6a2a7015c5687439d6d4e971ba',1,'credit_card',1,93,'2017-04-27 07:08:59.0')
,('b616f638cd86d92c7cbd06cf7484ee34',1,'credit_card',1,21,'2018-05-23 12:37:35.0')
,('c82a457d646f77c8f151e12a3e517ed2',1,'credit_card',3,145,'2018-08-08 17:11:25.0')
,('c10ff28c81d0b9bd2a265bb0836c8b0c',1,'credit_card',7,77,'2017-10-05 01:23:47.0')
,('aa466a92af916f9f68e56fce7d3a21b1',1,'credit_card',1,159,'2018-07-02 21:17:32.0')
,('dc400373e624e9b0435847a79813c658',2,'voucher',1,49,'2018-01-14 14:49:14.0')
,('b7e4aca3e798d20643faacb681272a9c',1,'credit_card',5,172,'2017-10-11 13:31:49.0')
,('c3fd670b03599718895218d479f660b6',1,'boleto',1,921,'2017-10-04 13:56:28.0')
,('c272bcd21c287498b4883c7512019702',1,'credit_card',1,98,'2018-01-31 07:31:37.0')
,('fc66798245e4d173bcc7eb36eb72a278',1,'credit_card',2,179,'2018-06-15 16:16:34.0')
,('d0e9849de800fdb4cb3b5e6d42c6b367',1,'boleto',1,86,'2017-08-31 07:38:18.0')
,('cf1bc456a0d5c63bb6c94d3b8b2c56e7',1,'boleto',1,71,'2017-09-06 06:15:27.0')
,('eba18dfa91e31cf748f9f52b779f9ae8',1,'credit_card',1,32,'2017-11-14 04:13:32.0')
,('a41753c6a1d8accb89732e36243432d7',1,'credit_card',3,46,'2017-05-12 06:51:43.0')
,('a062c240bb299fa3f0ce55cf05ec8390',1,'credit_card',5,78,'2018-07-13 15:00:27.0')
,('f18f5dcedf8a6caf530bf0cad9937b4f',1,'credit_card',2,80,'2018-02-26 11:18:18.0')
,('ad133696906f6a78826daa0911b7daec',1,'credit_card',8,219,'2018-06-15 11:41:22.0')
,('d74283a9b897322afe09916280aca43f',1,'credit_card',1,54,'2018-05-17 15:06:09.0')
,('d288e92a6be123f2e77f34fafd902464',1,'credit_card',1,141,'2017-11-24 20:22:16.0')
,('eca3005a4f60ceb77b67a30b74095ddf',2,'credit_card',1,4,'2017-07-26 05:09:01.0')
,('b545ba7b0bd67a3128185c7214704319',1,'credit_card',8,340,'2018-06-11 10:59:24.0');

-- DUMP TO order_reviews
INSERT INTO order_reviews (review_id,order_id,review_score,review_comment_title,review_comment_message,review_creation_date,review_answer_timestamp) VALUES 
('7bc2406110b926393aa56f80a40eba40','73fc7af87114b39712e6da79b0a377eb',4,'','','2018-01-17 20:00:00.0','2018-01-18 17:46:59.0')
,('80e641a11e56f04c1ad469d5645fdfde','a548910a1c6147796b98fdf73dbeba33',5,'','','2018-03-09 20:00:00.0','2018-03-10 23:05:13.0')
,('228ce5500dc1d8e020d8d1322874b6f0','f9e4b658b201a9f2ecdecbb34bed034b',5,'','','2018-02-16 20:00:00.0','2018-02-18 10:36:24.0')
,('e64fb393e7b32834bb789ff8bb30750e','658677c97b385a9be170737859d3511b',5,'','Recebi bem antes do prazo estipulado.','2017-04-20 20:00:00.0','2017-04-21 18:02:06.0')
,('f7c4243c7fe1938f181bec41a392bdeb','8e6bfb81e283fa7e4f11123a3fb894f1',5,'','ParabÃ©ns lojas lannister adorei comprar pela Internet seguro e prÃ¡tico ParabÃ©ns a todos feliz PÃ¡scoa','2018-02-28 20:00:00.0','2018-03-02 06:26:53.0')
,('15197aa66ff4d0650b5434f1b46cda19','b18dcdf73be66366873cd26c5724d1dc',1,'','','2018-04-12 20:00:00.0','2018-04-15 20:39:37.0')
,('07f9bee5d1b850860defd761afa7ff16','e48aa0d2dcec3a2e87348811bcfdf22b',5,'','','2017-07-15 20:00:00.0','2017-07-18 15:30:34.0')
,('7c6400515c67679fbee952a7525281ef','c31a859e34e3adac22f376954e19b39d',5,'','','2018-08-13 20:00:00.0','2018-08-14 17:36:06.0')
,('a3f6f7f6f433de0aefbb97da197c554c','9c214ac970e84273583ab523dfafd09b',5,'','','2017-05-16 20:00:00.0','2017-05-18 08:05:37.0')
,('8670d52e15e00043ae7de4c01cc2fe06','b9bf720beb4ab3728760088589c62129',4,'recomendo','aparelho eficiente. no site a marca do aparelho esta impresso como 3desinfector e ao chegar esta com outro nome...atualizar com a marca correta uma vez que Ã© o mesmo aparelho','2018-05-21 20:00:00.0','2018-05-23 12:45:47.0')
,('c9cfd2d5ab5911836ababae136c3a10c','cdf9aa68e72324eeb25c7de974696ee2',5,'','','2017-12-22 20:00:00.0','2017-12-26 10:36:03.0')
,('96052551d87e5f62e6c9f6974ec392e9','3d374c9e46530bb5ed4a7648915306a6',5,'','','2017-12-18 20:00:00.0','2017-12-20 06:25:22.0')
,('4b49719c8a200003f700d3d986ea1a19','9d6f15f95d01e79bd1349cc208361f09',4,'','Mas um pouco ',NULL,NULL)
,('','2018-02-16 00:00:00',2018,NULL,NULL,NULL,NULL)
,('23f75a37effc35d9a915b4e1ad483793','2eaf8e099d871cd5c22b83b5ea8f6e0e',4,'','','2018-03-27 20:00:00.0','2018-03-30 11:10:55.0')
,('9a0abbb668bafb95a6d2b05db43284c4','d7bd0e4afdf94846eb73642b4e3e75c3',3,'','','2017-04-29 20:00:00.0','2017-05-02 20:02:22.0')
,('3948b09f7c818e2d86c9a546758b2335','e51478e7e277a83743b6f9991dbfa3fb',5,'Super recomendo','Vendedor confiÃ¡vel',NULL,'2018-05-22 20:00:00.0')
,('9314d6f9799f5bfba510cc7bcd468c01','0dacf04c5ad59fd5a0cc1faa07c34e39',2,'','GOSTARIA DE SABER O QUE HOUVE',NULL,'2018-01-17 20:00:00.0')
,('8e15a274d95600fa14f8be64e37a0e67','ff1581e08b3011021e7c7de592ddc81e',5,'','','2018-03-23 20:00:00.0','2018-03-26 11:58:32.0')
,('fdbdb2629a7cde0f66657acc92084e7f','70a752414a13d09cc1f2b437b914b28e',3,'','','2017-09-28 20:00:00.0','2017-10-01 21:12:49.0');

-- DUMP TO orders
INSERT INTO orders (order_id,customer_id,order_status,order_purchase_timestamp,order_approved_at,order_delivered_carrier_date,order_delivered_customer_date,order_estimated_delivery_date) VALUES 
('e481f51cbdc54678b7cc49136f2d6af7','9ef432eb6251297304e76186b10a928d','delivered','2017-10-02 06:56:33.0','2017-10-02 07:07:15.0','2017-10-04 15:55:00.0','2017-10-10 17:25:13.0','2017-10-17 20:00:00.0')
,('53cdb2fc8bc7dce0b6741e2150273451','b0830fb4747a6c6d20dea0b8c802d7ef','delivered','2018-07-24 16:41:37.0','2018-07-25 23:24:27.0','2018-07-26 10:31:00.0','2018-08-07 11:27:45.0','2018-08-12 20:00:00.0')
,('47770eb9100c2d0c44946d9cf07ec65d','41ce2a54c0b03bf3443c3d931a367089','delivered','2018-08-08 04:38:49.0','2018-08-08 04:55:23.0','2018-08-08 09:50:00.0','2018-08-17 14:06:29.0','2018-09-03 20:00:00.0')
,('949d5b44dbf5de918fe9c16f97b45f8a','f88197465ea7920adcdbec7375364d82','delivered','2017-11-18 15:28:06.0','2017-11-18 15:45:59.0','2017-11-22 09:39:59.0','2017-12-01 20:28:42.0','2017-12-14 20:00:00.0')
,('ad21c59c0840e6cb83a9ceb5573f8159','8ab97904e6daea8866dbdbc4fb7aad2c','delivered','2018-02-13 17:18:39.0','2018-02-13 18:20:29.0','2018-02-14 15:46:34.0','2018-02-16 14:17:02.0','2018-02-25 20:00:00.0')
,('a4591c265e18cb1dcee52889e2d8acc3','503740e9ca751ccdda7ba28e9ab8f608','delivered','2017-07-09 17:57:05.0','2017-07-09 18:10:13.0','2017-07-11 10:58:04.0','2017-07-26 06:57:55.0','2017-07-31 20:00:00.0')
,('136cce7faa42fdb2cefd53fdc79a6098','ed0271e0b7da060a393796590e7b737a','invoiced','2017-04-11 08:22:08.0','2017-04-13 09:25:17.0',NULL,NULL,'2017-05-08 20:00:00.0')
,('6514b8ad8028c9f2cc2374ded245783f','9bdf08b4b3b52b5526ff42d37d47f222','delivered','2017-05-16 09:10:30.0','2017-05-16 09:22:11.0','2017-05-22 06:07:46.0','2017-05-26 08:55:51.0','2017-06-06 20:00:00.0')
,('76c6e866289321a7c93b82b54852dc33','f54a9f0e6b351c431402b8461ea51999','delivered','2017-01-23 14:29:09.0','2017-01-24 22:50:47.0','2017-01-26 10:16:31.0','2017-02-02 10:08:10.0','2017-03-05 20:00:00.0')
,('e69bfb5eb88e0ed6a785585b27e16dbf','31ad1d1b63eb9962463f764d4e6e0c9d','delivered','2017-07-29 07:55:02.0','2017-07-29 08:05:32.0','2017-08-10 15:45:24.0','2017-08-16 13:14:30.0','2017-08-22 20:00:00.0')
,('e6ce16cb79ec1d90b1da9085a6118aeb','494dded5b201313c64ed7f100595b95c','delivered','2017-05-16 15:41:10.0','2017-05-16 15:50:18.0','2017-05-18 07:40:40.0','2017-05-29 07:18:31.0','2017-06-06 20:00:00.0')
,('34513ce0c4fab462a55830c0989c7edb','7711cf624183d843aafe81855097bc37','delivered','2017-07-13 15:58:11.0','2017-07-13 16:10:08.0','2017-07-14 14:43:29.0','2017-07-19 10:04:48.0','2017-08-07 20:00:00.0')
,('82566a660a982b15fb86e904c8d32918','d3e3b74c766bc6214e0c830b17ee2341','delivered','2018-06-07 06:06:19.0','2018-06-08 23:13:12.0','2018-06-11 09:29:00.0','2018-06-19 08:05:52.0','2018-07-17 20:00:00.0')
,('5ff96c15d0b717ac6ad1f3d77225a350','19402a48fe860416adf93348aba37740','delivered','2018-07-25 13:44:10.0','2018-07-25 13:55:14.0','2018-07-26 09:16:00.0','2018-07-30 11:52:25.0','2018-08-07 20:00:00.0')
,('432aaf21d85167c2c86ec9448c4e42cc','3df704f53d3f1d4818840b34ec672a9f','delivered','2018-03-01 10:14:28.0','2018-03-01 11:10:47.0','2018-03-02 17:09:20.0','2018-03-12 19:36:26.0','2018-03-20 20:00:00.0')
,('dcb36b511fcac050b97cd5c05de84dc3','3b6828a50ffe546942b7a473d70ac0fc','delivered','2018-06-07 15:03:12.0','2018-06-12 19:31:02.0','2018-06-11 10:54:00.0','2018-06-21 11:34:32.0','2018-07-03 20:00:00.0')
,('403b97836b0c04a622354cf531062e5f','738b086814c6fcc74b8cc583f8516ee3','delivered','2018-01-02 15:00:43.0','2018-01-02 15:09:04.0','2018-01-03 14:19:09.0','2018-01-19 21:38:59.0','2018-02-05 20:00:00.0')
,('116f0b09343b49556bbad5f35bee0cdf','3187789bec990987628d7a9beb4dd6ac','delivered','2017-12-26 19:41:31.0','2017-12-26 19:50:22.0','2017-12-28 14:33:05.0','2018-01-08 18:36:36.0','2018-01-28 20:00:00.0')
,('85ce859fd6dc634de8d2f1e290444043','059f7fc5719c7da6cbafe370971a8d70','delivered','2017-11-20 20:03:41.0','2017-11-20 20:14:22.0','2017-11-23 17:32:26.0','2017-11-27 14:28:00.0','2017-12-10 20:00:00.0')
,('83018ec114eee8641c97e08f7b4e926f','7f8c8b9c2ae27bf3300f670c3d478be8','delivered','2017-10-26 11:54:26.0','2017-10-26 12:08:14.0','2017-10-26 17:46:53.0','2017-11-08 18:22:00.0','2017-11-22 20:00:00.0')
,('203096f03d82e0dffbc41ebc2e2bcfb7','d2b091571da224a1b36412c18bc3bbfe','delivered','2017-09-18 10:31:30.0','2017-09-19 00:04:09.0','2017-10-06 13:50:03.0','2017-10-09 18:23:46.0','2017-09-27 20:00:00.0')
,('f848643eec1d69395095eb3840d2051e','4fa1cd166fa598be6de80fa84eaade43','delivered','2018-03-15 04:52:40.0','2018-03-15 05:09:31.0','2018-03-15 15:52:48.0','2018-03-19 14:08:32.0','2018-03-28 20:00:00.0')
,('2807d0e504d6d4894d41672727bc139f','72ae281627a6102d9b3718528b420f8a','delivered','2018-02-03 16:37:35.0','2018-02-03 16:50:22.0','2018-02-05 18:37:28.0','2018-02-08 12:13:46.0','2018-02-20 20:00:00.0')
,('95266dbfb7e20354baba07964dac78d5','a166da34890074091a942054b36e4265','delivered','2018-01-08 03:55:29.0','2018-01-08 04:07:31.0','2018-01-24 19:16:37.0','2018-01-26 13:32:38.0','2018-02-20 20:00:00.0')
,('f3e7c359154d965827355f39d6b1fdac','62b423aab58096ca514ba6aa06be2f98','delivered','2018-08-09 07:44:40.0','2018-08-09 23:24:51.0','2018-08-10 08:29:00.0','2018-08-13 14:24:27.0','2018-08-16 20:00:00.0')
,('fbf9ac61453ac646ce8ad9783d7d0af6','3a874b4d4c4b6543206ff5d89287f0c3','delivered','2018-02-20 19:46:53.0','2018-02-21 22:30:46.0','2018-02-26 18:25:22.0','2018-03-21 18:03:54.0','2018-03-11 20:00:00.0')
,('acce194856392f074dbf9dada14d8d82','7e20bf5ca92da68200643bda76c504c6','delivered','2018-06-03 20:00:13.0','2018-06-04 20:35:10.0','2018-06-05 09:24:00.0','2018-06-16 11:20:55.0','2018-07-17 20:00:00.0')
,('dd78f560c270f1909639c11b925620ea','8b212b9525f9e74e85e37ed6df37693e','delivered','2018-03-11 21:50:26.0','2018-03-11 23:28:34.0','2018-03-12 17:06:37.0','2018-03-21 10:41:50.0','2018-03-27 20:00:00.0')
,('91b2a010e1e45e6ba3d133fa997597be','cce89a605105b148387c52e286ac8335','delivered','2018-05-02 07:45:38.0','2018-05-03 08:55:01.0','2018-05-10 12:16:00.0','2018-05-16 16:56:24.0','2018-05-22 20:00:00.0')
,('ecab90c9933c58908d3d6add7c6f5ae3','761df82feda9778854c6dafdaeb567e4','delivered','2018-02-25 09:50:30.0','2018-02-25 10:47:35.0','2018-02-26 18:28:50.0','2018-03-27 19:29:14.0','2018-04-12 20:00:00.0')
,('f70a0aff17df5a6cdd9a7196128bd354','456dc10730fbdba34615447ea195d643','delivered','2017-08-10 07:58:33.0','2017-08-11 22:45:24.0','2017-08-17 11:35:07.0','2017-08-18 10:28:02.0','2017-08-22 20:00:00.0')
,('1790eea0b567cf50911c057cf20f90f9','52142aa69d8d0e1247ab0cada0f76023','delivered','2018-04-16 17:15:39.0','2018-04-16 18:10:26.0','2018-04-18 09:05:09.0','2018-05-05 08:28:34.0','2018-05-14 20:00:00.0');

-- DUMP TO product_category_name_translation
INSERT INTO product_category_name_translation (`product_category_name`,product_category_name_english) VALUES 
('beleza_saude','health_beauty
')
,('informatica_acessorios','computers_accessories
')
,('automotivo','auto
')
,('cama_mesa_banho','bed_bath_table
')
,('moveis_decoracao','furniture_decor
')
,('esporte_lazer','sports_leisure
')
,('perfumaria','perfumery
')
,('utilidades_domesticas','housewares
')
,('telefonia','telephony
')
,('relogios_presentes','watches_gifts
')
,('alimentos_bebidas','food_drink
')
,('bebes','baby
')
,('papelaria','stationery
')
,('tablets_impressao_imagem','tablets_printing_image
')
,('brinquedos','toys
')
,('telefonia_fixa','fixed_telephony
')
,('ferramentas_jardim','garden_tools
')
,('fashion_bolsas_e_acessorios','fashion_bags_accessories
')
,('eletroportateis','small_appliances
');

-- DUMP TO products
INSERT INTO products (product_id,product_category_name,product_name_lenght,product_description_lenght,product_photos_qty,product_weight_g,product_length_cm,product_height_cm,product_width_cm) VALUES 
('1e9e8ef04dbcff4541ed26657ea517e5','perfumaria',40,287,1,225,16,10,14)
,('3aa071139cb16b67ca9e5dea641aaa2f','artes',44,276,1,1000,30,18,20)
,('96bd76ec8810374ed1b65e291975717f','esporte_lazer',46,250,1,154,18,9,15)
,('cef67bcfe19066a932b7673e239eb23d','bebes',27,261,1,371,26,4,26)
,('9dc1a7de274444849c219cff195d0b71','utilidades_domesticas',37,402,4,625,20,17,13)
,('41d3672d4792049fa1779bb35283ed13','instrumentos_musicais',60,745,1,200,38,5,11)
,('732bd381ad09e530fe0a5f457d81becb','cool_stuff',56,1272,4,18350,70,24,44)
,('2548af3e6e77a690cf3eb6368e9ab61e','moveis_decoracao',56,184,2,900,40,8,40)
,('37cc742be07708b53a98702e77a21a02','eletrodomesticos',57,163,1,400,27,13,17)
,('8c92109888e8cdf9d66dc7e463025574','brinquedos',36,1156,1,600,17,10,12)
,('14aa47b7fe5c25522b47b4b29c98dcb9','cama_mesa_banho',54,630,1,1100,16,10,16)
,('03b63c5fc16691530586ae020c345514','bebes',49,728,4,7150,50,19,45)
,('cf55509ea8edaaac1d28fdb16e48fc22','instrumentos_musicais',43,1827,3,250,17,7,17)
,('7bb6f29c2be57716194f96496660c7c2','moveis_decoracao',51,2083,2,600,68,11,13)
,('eb31436580a610f202c859463d8c7415','construcao_ferramentas_seguranca',59,1602,4,200,17,7,17)
,('3bb7f144022e6732727d8d838a7b13b3','esporte_lazer',22,3021,1,800,16,2,11)
,('6a2fb4dd53d2cdb88e0432f1284a004c','perfumaria',39,346,2,400,27,5,20)
,('a1b71017a84f92fd8da4aeefba108a24','informatica_acessorios',59,636,1,900,40,15,20);

-- DUMP TO sellers
INSERT INTO sellers (seller_id,seller_zip_code_prefix,seller_city,seller_state) VALUES 
('3442f8959a84dea7ee197c632cb2df15',13023,'campinas','SP')
,('d1b65fc7debc3361ea86b5f14c68d2e2',13844,'mogi guacu','SP')
,('ce3ad9de960102d0677a81f5d0bb7b2d',20031,'rio de janeiro','RJ')
,('c0f3eea2e14555b6faeea3dd58c1b1c3',4195,'sao paulo','SP')
,('51a04a8a6bdcb23deccc82b0b80742cf',12914,'braganca paulista','SP')
,('c240c4061717ac1806ae6ee72be3533b',20920,'rio de janeiro','RJ')
,('e49c26c3edfa46d227d5121a6b6e4d37',55325,'brejao','PE')
,('1b938a7ec6ac5061a66a3766e0e75f90',16304,'penapolis','SP')
,('768a86e36ad6aae3d03ee3c6433d61df',1529,'sao paulo','SP')
,('ccc4bbb5f32a6ab2b7066a4130f114e3',80310,'curitiba','PR')
,('8cb7c5ddf41f4d506eba76e9a4702a25',75110,'anapolis','GO')
,('a7a9b880c49781da66651ccf4ba9ac38',13530,'itirapina','SP')
,('8bd0f31cf0a614c658f6763bd02dea69',1222,'sao paulo','SP')
,('05a48cc8859962767935ab9087417fbb',5372,'sao paulo','SP')
,('7b8e8ec35bad4b0ef7e3963650b0a87b',88705,'tubarao','SC')
,('1444c08e64d55fb3c25f0f09c07ffcf2',42738,'lauro de freitas','BA')
,('166e8f1381e09651983c38b1f6f91c11',88780,'imbituba','SC')
,('e38db885400cd35c71dfd162f2c1dbcf',70740,'brasilia','DF')
,('d2e753bb80b7d4faa77483ed00edc8ca',45810,'porto seguro','BA')
,('f9ec7093df3a7b346b7bcf7864069ca3',5138,'sao paulo','SP')
,('4e6015589b781adaa5ce7f1892d06bb1',11440,'guaruja','SP')
,('4cf490a58259286ada5ba8525ba9e84a',14910,'tabatinga','SP')
,('f7496d659ca9fdaf323c0aae84176632',4156,'sao paulo','SP')
,('2ff97219cb8622eaf3cd89b7d9c09824',13320,'salto','SP')
,('8bd0e3abda539b9479c4b44a691be1ec',98910,'tres de maio','RS')
,('2a1348e9addc1af5aaa619b1a3679d6b',30494,'belo horizonte','MG')
,('2078fe5066350e7d220c0ad3a3bbc6c1',86707,'arapongas','PR')
,('116ccb1a1604bc88e4d234a8c23f33de',9850,'sao bernardo do campo','SP')
,('430315b7bb4b6e4b3c978f9dfa9b0558',4857,'sao paulo','SP')
,('406822777a0b9eb5c50e442dd4cd3ec5',18500,'tatui','SP');