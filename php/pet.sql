   SET NAMES UTF8;
   DROP DATABASE IF EXISTS pet;
   CREATE DATABASE pet CHARSET=UTF8;
   USE pet; 
   CREATE TABLE pet_dog(
     uid    INT PRIMARY KEY AUTO_INCREMENT,
     uname  VARCHAR(32) UNIQUE,
     upwd   VARCHAR(32),
     email  VARCHAR(64),
     phone  VARCHAR(16),
     avatar  VARCHAR(128),
     user_name  VARCHAR(32),
     gender   INT 
   );
   INSERT INTO pet_dog VALUES
   (1,"zsx","zsx","1633667120@qq.com","15515087610","img/1.png","郑淑贤",0),
   (2,"zk","123456","123456@qq.com","1321324324","img/2.png","张可",1),
   (3,"wbq","123456","1234567@qq.com","1234565757","img/3.png","王冰倩",0),
   (4,"lyj","123456","12345678@qq.com","12345678","img/4.png","刘雅静",0),
   (5,"wpw","123456","123456789@qq.com","123456789","img/5.png","武攀伟",1);
CREATE TABLE dog_ls(
   lid INT PRIMARY KEY AUTO_INCREMENT,
   title  VARCHAR(64),
   img    VARCHAR(32),
   price  VARCHAR(32)
);
INSERT INTO dog_ls VALUES
(01,"新西兰原装进口K9Nature佐餐系列羊肉冻干犬佐餐142g","img/index/lingshi1.png","￥138.00"),
(02,"新西兰原装进口K9Nature佐餐系列羊肚冻干犬佐餐(保健品)142g","img/index/lingshi2.png","￥138.00"),
(03,"新西兰原装进口K9Nature佐餐系列牛肉冻干犬佐餐142g","img/index/lingshi3.png","￥138.00"),
(04,"酤达woofstard天然鸭肉冻干零食100g","img/index/lingshi4.png","￥75.00"),
(05,"酤达woofstard天然三文鱼冻干零食100g","img/index/lingshi5.png","￥74.00"),
(06,"酤达woofstard天然鸭肉冻干零食100g","img/index/lingshi6.png","￥38.00"),
(07,"TOMI冻干鸡心犬零食","img/index/lingshi7.png","￥78.00"),
(08,"TOMI冻干牛肝犬零食","img/index/lingshi8.png","￥58.00");
CREATE TABLE yg_list(
  lid  INT PRIMARY KEY AUTO_INCREMENT,
  img1  VARCHAR(32),
  img2  VARCHAR(32),
  title   VARCHAR(64),
  price   VARCHAR(32),
  location  VARCHAR(32),
  img_brand  VARCHAR(32),
  img_san    VARCHAR(32),
  store_lc   VARCHAR(32)
  );
INSERT INTO yg_list VALUES
(01,"img/index/yougou/alsj1.jpg","img/index/yougou/alsj2.jpg","精品阿里斯加包纯种健康幼犬出售","2000","中原区","img/index/brand.png","img/index/san.png","萌犬之家"),
(02,"img/index/yougou/bg1.jpg","img/index/yougou/bg2.jpg","精品巴哥包纯种健康幼犬出售","2000","中原区","img/index/brand.png","img/index/san.png","萌犬之家"),
(03,"img/index/yougou/bx1.jpg","img/index/yougou/bx2.jpg","精品比熊包纯种健康幼犬出售","2000","中原区","img/index/brand.png","img/index/san.png","爱犬之家"),
(04,"img/index/yougou/hsq1.jpg","img/index/yougou/hsq2.jpg","精品哈士奇包纯种健康幼犬出售","2000","中原区","img/index/brand.png","img/index/san.png","萌犬之家"),
(05,"img/index/yougou/jm1.jpg","img/index/yougou/jm2.jpg","精品金毛包纯种健康幼犬出售","2000","中原区","img/index/brand.png","img/index/san.png","萌犬之家"),
(06,"img/index/yougou/qtq1.jpg","img/index/yougou/qtq2.jpg","精品秋田犬包纯种健康幼犬出售","2000","中原区","img/index/brand.png","img/index/san.png","美犬之家"),
(07,"img/index/yougou/taidi1.jpg","img/index/yougou/taidi2.jpg","精品泰迪包纯种健康幼犬出售","2000","中原区","img/index/brand.png","img/index/san.png","萌犬之家"),
(08,"img/index/yougou/zangao1.jpg","img/index/yougou/zangao2.jpg","精品阿里斯加包纯种健康幼犬出售","2000","中原区","img/index/brand.png","img/index/san.png", "爱犬之家");
CREATE TABLE dog_information(
 id     INT PRIMARY KEY AUTO_INCREMENT,
 title  VARCHAR(64),
 time   VARCHAR(32),
 detail  VARCHAR(256)
);
INSERT INTO dog_information VALUES
(01,"2018中美国际小动物医师大会邀请函","2018-05-24","随着中国经济的高速发展和人口老龄化的加快，宠物饲养与宠物消费已成为城市消费的新亮点，饲养宠物的迅速增加，使小动物医疗行业也蓬勃发展起来。 美国明尼苏达大学是一家全美领先的兽医学院，致力于为当前和未来培养兽医和生物医学科学家。学院由全美认证，已培养近4000名兽医及数百名科学家，学院师资团队在教学和研究方面取得的卓越成就得到了国内和国际的公认"),
(02,"携手朗诺，掀起中国宠物零售业盈利新浪潮","2018-04-06","2018年4月2日，由天津朗诺宠物食品有限公司主办的“抓住宠物零售业盈利新浪潮·财富有约高峰论坛”在北京渔阳饭店隆重举行。本次论坛朗诺邀请到了长城展览公司CEO程杨女士、京宠展总经理曹林辉先生、圣宠宠物连锁机构CEO阎金胜先生、狗民网品牌及市场总监梁炜宸先生、京东宠物农业部采购经理张振龙先生、上海三米国际总经理郑海龙夫妇、兰多湾宠物度假中心......"),
(03,"2018上海国际宠物食品用品及宠物医疗展览会","2018-03-23","随着中国经济的高速发展和人口老龄化的加快，宠物饲养与宠物消费已成为城市消费的新亮点，饲养宠物的迅速增加，使小动物医疗行业也蓬勃发展起来发展，美国明尼苏达大学是一家全球领先的兽医学院，致力于为当前和未来培养兽医和生物医学科学家。学院由全美认证，已培养4000多名兽医及数百位科学家，学院师资团队在教学和研究方面取得的卓越成就得到了国内和国际.."),
(04,"抓住宠物零售业“盈利”新浪潮","2018-03-19","宠物店业绩难以突破却找不到原因怎么办？员工难招聘，培养几年后大比例流失怎么办？>同质化竞争严重却无法脱颖而出怎么办？没有爆款产品能够锁住客户怎么办投入和回报不成比例却无法扭转怎么办？这些宠物零售业中种种的“痛”,您或许...");
CREATE TABLE dog_trends(
  id INT PRIMARY KEY AUTO_INCREMENT,
 title VARCHAR(64),
 time  VARCHAR(32),
 detail  VARCHAR(256)
);
INSERT INTO dog_trends VALUES
(01,"联宠平台“LPET”完成1.5亿元A+轮融资,九鼎资本和新希望投资","2018-07-24","4月9日，中爱科技旗下的联宠平台“LPET”宣布完成1.5亿元A+轮融资，由九鼎资本领投，新希望、康曼德、巨杉、九宜城等资本跟投。本轮融资将主要用于团队建设、技术研发和先进设备引进，加速联宠医院管理软件、联宠国际采购商城、联宠国际检测"),
(02,"狗年宠物写真火爆，宠物摄影真的是暴利吗？","2018-04-06","狗年，可以说是宠物行业发展的天时，大家都准备趁着狗狗的“本命年”大干一场。 说起宠物服务产业，大家一般想到的都是宠物美容、宠物寄养、宠物训练，甚至是新兴的宠物殡葬。然而狗年伊始，有一项宠物服务便异常火爆，那就是宠物摄影。"),
(03,"宠物走丢怎么办？ “宠物侦探”成日本新兴职业","2018-03-23","据外媒报道，年末年始是日本宠物最容易走丢的时段。家里客人来来往往，门窗也开得更频繁，一些性格活泼淘气的宠物就会趁机溜到外面。目前，帮助寻找失踪宠物已经在日本发展成为一门职业，被称作“宠物侦探”。"),
(04,"1.15-1.19 宠物行业资讯内容","2018-03-19","汪仔饭创始人王津荣透露，汪仔饭已于2018年1月获千万级pre-A轮融资。本轮融资由青山资本领投，前海母基金跟投，天使轮投资方齐一创投及李成个人继续追投，并由猎云资本担任独家财务顾问。此轮融资，汪仔饭将主要用于渠道建设和品牌推广。");
CREATE TABLE dog_news(
 id    INT PRIMARY KEY AUTO_INCREMENT,
 title VARCHAR(64),
 time  VARCHAR(32),
 detail  VARCHAR(256)
);
INSERT INTO dog_news VALUES
(01,"法国假期催生“弃宠”潮 每年约10万只宠物被抛弃","2018-07-24","法国是拥有宠物数量最多的的欧洲国家，也是宠物被遗弃数量最多的欧洲国家。据法国《欧洲时报》6月23日报道，法国动物保护组织(SPA)近日公布的一项数据显示，法国每年有约10万只宠物被抛弃。"),
(02,"争恶斗丑” 美国最丑狗狗大赛冠军长啥样？","2018-04-06","6月25日电 据外媒报道，当地时间23日晚，美国旧金山湾区举行“世界最丑狗狗大赛”，最终，9岁的英国斗牛犬“沙沙”不负众望，夺得冠军，它将获得1500美元的奖金。"),
(03,"2英女子变魔术实力“坑狗” 二哈一秒惊呆不知所措","2018-03-23","据英国《每日邮报》6月19日报道，近日，在伦敦伍尔维奇，23岁的桑德拉·彼得森(Sandra Pettersen),在家中上演了逗趣一幕，她为爱犬Jax上演魔术假装消失，没料想狗狗一秒愣住，回过神后急忙寻找主人，困惑呆萌的样子十分可爱。"),
(04,"养狗前vs养狗后铲屎官有什么变化？网友：我练出了马甲线","2018-03-19","有句话说的好：如果你有一只狗，请努力爱它！因为它正在让你变成更好的自己...");
CREATE TABLE dog_parti(
id     INT PRIMARY KEY AUTO_INCREMENT,
 title VARCHAR(64),
 time  VARCHAR(32),
 detail  VARCHAR(256)
);
INSERT INTO dog_parti VALUES
(01,"宠物店加盟怎么样?哪家好?","2018-07-24","开宠物加盟店选址很重要，因为好的选择能很快拥有属于自己的消费群，占据有利的地理位置，宠物店经营起来也更加方便。此外，有利的选址工作也是其品牌宣传的一种方式，形成一种无形资产，从而增加经营附加产值。"),
(02,"开宠物店怎么样|如何开宠物店赚钱","2018-04-06","现在我们走在大街上看到遛狗的越来越多起来，现在生活好了，很多人都想养个宠物作为消遣，也是作为人们的心理寄托，比如狗狗，大部分狗狗听话，也善解人意。很多人都喜欢的。下面派多格宠物店加盟为大家介绍一下开宠物用品店怎么样吧。"),
(03,"开一家宠物店的注意事项有哪些","2018-03-23","现在很多人不想给别人打工，想要自己开店创业。这个想法是很好的，但万事开头难。很多人刚开始实践就被困难挡住迈不开脚步，还有的店开起来了，但是因为对市场、货源和经营这些方面准备不足，导致店内没有生意。那么开一家店需要注意什么呢?下面派多格宠物店加盟小编就宠物店来向大家简单地介绍一下开一家宠物店需要注意什么。"),
(04,"如何经营可以提高宠物店口碑","2018-03-19","宠物店想要赚钱就得把服务做好，而把服务做好最简单的就是把客户伺候好了，那么自然而然别人就愿意来你的店里消费。");
CREATE TABLE dog_skill(
id     INT PRIMARY KEY AUTO_INCREMENT,
 title VARCHAR(64),
 time  VARCHAR(32),
 detail  VARCHAR(256)
);
INSERT INTO dog_skill VALUES
(01,"全面掌握自己的职业技能，才能更好的创造自己的价值，获得更高的利益。","2018-07-24","开宠物加盟店选址很重要，因为好的选择能很快拥有属于自己的消费群，占据有利的地理位置，宠物店经营起来也更加方便。此外，有利的选址工作也是其品牌宣传的一种方式，形成一种无形资产，从而增加经营附加产值。"),
(02,"专业的宠物美容培训学校那个地方有","2018-04-06","专业的宠物美容培训学校那个地方有，现在我们的教育改革的发展比以前要更加的开明，有很多的职业教育已经慢慢的发展起来，所以对于职业教育学院那些学习技术的人，比较发展好的行业我推荐宠物美容行业。"),
(03,"做宠物美容师是否需要学历支持","2018-03-23","做宠物美容师是否需要学历支持，这个社会没有学历是一件很可怕的事情，无论去哪里工作都要的是高学历的人，那么对于没有高学历的人难道就不能找一份好的工作吗"),
(04,"宠物美容学校的一般收费是多少","2018-03-19","宠物美容学校的一般收费是多少，当我们在学习宠物美容的时候，很多人都会打听学习宠物美容的各种费用，这是很多人在学习之前都必须要做的事情，所以下面我们就来分析一下。");
create table commodity(
	cid int ,
	img varchar(128),
	tilte varchar(128),
	price int,
	origin varchar(128),
	sales int,
	evaluate int
);
insert into commodity values
(1,'img/commodity/001.jpg','官方保障|担保交易棉花糖版大眼睛甜美脸','3000','京誉犬业','74','8'),
(null,'img/commodity/002.jpg','超小体比熊幼犬可送货到家挑选 血统纯正 ','5500','京誉犬业','50','11'),
(null,'img/commodity/003.jpg','官方保障|担保交易棉花糖版大眼睛甜美脸','6100','京誉犬业','81','22'),
(null,'img/commodity/004.jpg','官方保障|担保交易高品质俊介犬长不大','3400','京誉犬业','22','15'),
(null,'img/commodity/005.jpg','商城担保专业繁殖萨摩耶 血统纯种 可实地','7000','京誉犬业','54','5'),
(null,'img/commodity/006.jpg','大眼睛甜美脸型小体大毛量纽扣眼比熊幼犬','3000','京誉犬业','64','13'),
(null,'img/commodity/007.jpg','官方担保 顶级微笑天使澳版大毛量萨摩耶','8800','京誉犬业','84','11'),
(null,'img/commodity/008.jpg','北京法斗犬舍出售高端血统法国斗牛犬幼犬','9300','京誉犬业','28','6'),
(null,'img/commodity/009.jpg','商城担保专业繁殖萨摩耶 血统纯种 可实地','3600','京誉犬业','24','10'),
(null,'img/commodity/0010.png','官方担保 顶级微笑天使澳版大毛量萨摩耶','2000','京誉犬业','54','22'),
(null,'img/commodity/0011.jpg','商城担保交易 双血统高品质 精品法牛幼犬 ','5000','京誉犬业','44','14'),
(null,'img/commodity/0012.jpg','【官方担保】顶级精品斗牛宝宝品质保证 ','7000','京誉犬业','34','21'),
(null,'img/commodity/0013.jpg','商城担保交易 双血统高品质 精品法牛幼犬 ','3500','京誉犬业','54','14'),
(null,'img/commodity/0014.jpg','【商城第三方担保支付】法国斗牛犬价格_','2200','京誉犬业','54','17'),
(null,'img/commodity/0015.jpg','商城担保大型的专业繁殖双血统赛级法牛的','4400','京誉犬业','74','8'),
(null,'img/commodity/0017.jpg','中国高端松狮犬繁育专家北京松狮犬舍出售','4300','京誉犬业','54','24'),
(null,'img/commodity/0018.jpg','纯种高品质最聪明的法国斗牛犬幼犬 正在','4800','京誉犬业','34','20'),
(null,'img/commodity/0019.jpg','官方担保 法国迷你比熊幼犬 很可爱的小棉','3800','京誉犬业','25','11'),
(null,'img/commodity/0020.jpg','商城担保交易双血统高品质精品法牛幼犬 ','4800','京誉犬业','34','18'),
(null,'img/commodity/0021.jpg','商城担保大型的专业繁殖双血统赛级法牛的','2800','京誉犬业','27','4'),
(null,'img/commodity/0022.jpg','商城担保交易双血统高品质 精品萨摩幼犬 ','8200','京誉犬业','31','6'),
(null,'img/commodity/0023.jpg','商城担保交易双血统高品质 精品金毛幼犬 ','4800','京誉犬业','21','8'),
(null,'img/commodity/0024.jpg','双血统高品质 精品金毛幼犬 包纯种包健康','4500','京誉犬业','35','11'),
(null,'img/commodity/0025.png','中国高端英国斗牛犬繁育专家出售顶级英牛','4400','京誉犬业','24','4'),
(null,'img/commodity/0026.jpg','商城担保交易双血统高品质 精品博美幼犬 ','1800','京誉犬业','38','5'),
(null,'img/commodity/0027.jpg','双血统高品质 精品博美幼犬 包纯种包健康','3400','京誉犬业','14','11');
CREATE TABLE dog_type(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  tname VARCHAR(32),
  etname VARCHAR(32),
  img VARCHAR(64),
  price_min INT,
  price_max INT
);
INSERT INTO dog_type VALUES
(01,"泰迪犬","Teddy Dog","img/ggbk/img_1.png",1500,6000),
(null,"哈士奇","Siberian Husky","img/ggbk/img_2.png",1500,7000),
(null,"博美犬","Pomeranian","img/ggbk/img_3.png",1500,5800),
(null,"吉娃娃","Ji Wawa","img/ggbk/img_4.png",1500,5500),
(null,"古代牧羊犬","Old Sheepdog","img/ggbk/img_5.png",2000,9000),
(null,"萨摩耶","Samoye","img/ggbk/img_6.png",1500,6500),
(null,"松狮犬","Chow Chow","img/ggbk/img_7.png",1500,5000),
(null,"金毛","Golden Retriever","img/ggbk/img_8.png",1500,6000),
(null,"比熊犬","Bear","img/ggbk/img_9.png",1500,5000),
(null,"英国斗牛犬","British Bulldog","img/ggbk/img_10.png",3000,9000),
(null,"阿拉斯加犬","Alaska dog","img/ggbk/img_11.png",1500,6000),
(null,"藏獒","Tibetan Mastiff","img/ggbk/img_12.png",8000,15000),
(null,"拉布拉多","Labrador","img/ggbk/img_13.png",1600,8000),
(null,"约克夏","Yorkshire","img/ggbk/img_14.png",2000,6000),
(null,"边境牧羊犬","Border Collie","img/ggbk/img_15.png",1500,5000),
(null,"巴哥犬","Pug","img/ggbk/img_16.png",3000,12000),
(null,"大白熊犬","Great Pyrenees","img/ggbk/img_17.png",1500,7000),
(null,"雪纳瑞","Schnauzer","img/ggbk/img_18.png",1500,5000),
(null,"银狐犬","Japanese Spitzbn","img/ggbk/img_19.png",1500,3000),
(null,"德国牧羊犬","shepherd","img/ggbk/img_20.png",1500,6500),
(null,"苏格兰牧羊犬","Collie","img/ggbk/img_21.png",1500,6000),
(null,"罗威纳犬","Rottweiler","img/ggbk/img_22.png",1500,5000),
(null,"喜乐蒂","Shetland Sheepdog","img/ggbk/img_23.png",1500,6000),
(null,"西高地","West Highland","img/ggbk/img_24.png",2000,7000),
(null,"柯基犬","Corgi","img/ggbk/img_25.png",1800,7000),
(null,"可卡犬","Cocker","img/ggbk/img_26.png",1500,5000),
(null,"杜宾犬","Doberman Pinscher","img/ggbk/img_27.png",1500,4500),
(null,"高加索犬","Caucasus","img/ggbk/img_28.png",1500,8000),
(null,"圣伯纳犬","Saint Bernard","img/ggbk/img_29.png",2000,7000),
(null,"腊肠犬","The Dachshund","img/ggbk/img_30.png",1500,3500),
(null,"京巴狗","Pekingese","img/ggbk/img_31.png",1500,4000),
(null,"马尔济斯","Maltese","img/ggbk/img_32.png",1500,4000),
(null,"沙皮狗","Belldog","img/ggbk/img_33.png",2000,4000),
(null,"牛头梗","Bull Terrier","img/ggbk/img_34.png",1800,5000),
(null,"蝴蝶犬","Papillon","img/ggbk/img_35.png",1500,4000),
(null,"比格犬","Beagle dogs","img/ggbk/img_36.png",2000,8000),
(null,"伯恩山犬","Susi","img/ggbk/img_37.png",1600,6000),
(null,"斑点狗","Spotted dog","img/ggbk/img_38.png",1600,5800),
(null,"贵宾犬","Poodle","img/ggbk/img_40.png",1500,6500),
(null,"秋田犬","Akita dog","img/ggbk/img_41.png",2000,7000),
(null,"茶杯犬","Teacup dogs","img/ggbk/img_42.png",3000,8000),
(null,"比特犬","Pit Bull","img/ggbk/img_43.png",2500,8000),
(null,"马犬","malinois","img/ggbk/img_44.png",1500,4000),
(null,"柴犬","Shiba","img/ggbk/img_45.png",2000,7000),
(null,"狼狗","wolf dog","img/ggbk/img_46.png",2000,8000),
(null,"格力犬","Greyhound","img/ggbk/img_47.png",1800,8000),
(null,"昆明犬","Kunming dog","img/ggbk/img_48.png",2000,8000),
(null,"大丹犬","Great Dane","img/ggbk/img_49.png",2000,8500),
(null,"卡斯罗犬","Cane Corso","img/ggbk/img_50.png",2500,8000),
(null,"阿富汗猎犬","Afghan Hound","img/ggbk/img_51.png",2000,10000),
(null,"比利时牧羊犬","Tervueren","img/ggbk/img_52.png",2000,4500),
(null,"杜高犬","Dogos","img/ggbk/img_53.png",2500,8000),
(null,"西施犬","Shih Tzu","img/ggbk/img_54.png",1500,4000),
(null,"小鹿犬","minlature pinscher","img/ggbk/img_55.png",1500,5500),
(null,"中亚牧羊犬","CASD","img/ggbk/img_56.png",1500,7000),
(null,"纽芬兰犬","Newfoundland","img/ggbk/img_57.png",2000,7500),
(null,"法国斗牛犬","French Bulldog","img/ggbk/img_58.png",2000,8000),
(null,"美国斗牛犬","USA Bulldog","img/ggbk/img_59.png",3000,12000),
(null,"美国恶霸犬","bully pitbull","img/ggbk/img_60.png",4000,10000);
CREATE TABLE dog_select(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  bImg1  VARCHAR(32),
  bImg2  VARCHAR(32),
  bImg3  VARCHAR(32),
  Vimg  VARCHAR(32),
  title  VARCHAR(64),
  year   VARCHAR(32),
  dog_kinds  VARCHAR(32),
  location  VARCHAR(32),
  price  VARCHAR(32),
  simg_1  VARCHAR(32),
  simg_2 VARCHAR(32),
  simg_3 VARCHAR(32),
  limg_1  VARCHAR(32),
  limg_2 VARCHAR(32),
  limg_3 VARCHAR(32)
);
INSERT INTO dog_select VALUES
(01,"img/dog_select/b1.1.jpg","img/dog_select/b1.2.jpg","img/dog_select/b1.3.jpg","img/dog_select/v1.jpg","北京奶油色法牛 奶油色法国斗牛犬 极品法牛幼犬出售","5年淘狗通","犬种：法国斗牛犬 公（DD） 有血统证书","欧盟犬业  东城","4000","img/dog_select/1.1.jpg","img/dog_select/1.2.jpg","img/dog_select/1.3.jpg","img/dog_select/l1.1.jpg","img/dog_select/l1.2.jpg","img/dog_select/l1.3.jpg"),
(02,"img/dog_select/b2.1.jpg","img/dog_select/b2.2.jpg","img/dog_select/b2.3.jpg","img/dog_select/v1.jpg","纯种法国斗牛犬高品质血统纯健康","5年淘狗通","犬种：法国斗牛犬 公（DD） 有血统证书","欧盟犬业  东城","2000","img/dog_select/2.1.jpg","img/dog_select/2.2.jpg","img/dog_select/2.3.jpg","img/dog_select/l2.1.jpg","img/dog_select/l2.2.jpg","img/dog_select/l2.3.jpg"),
(03,"img/dog_select/b3.1.jpg","img/dog_select/b3.2.jpg","img/dog_select/b3.3.jpg","img/dog_select/v1.jpg","出售健康纯种比熊犬、免费送货签售后协议、可刷卡","5年淘狗通","犬种：比熊犬 公（DD） 有血统证书","爱屋即屋名犬繁殖  通州","2000","img/dog_select/3.1.jpg","img/dog_select/3.2.jpg","img/dog_select/3.3.jpg","img/dog_select/l3.1.jpg","img/dog_select/l3.2.jpg","img/dog_select/l3.3.jpg"),
(04,"img/dog_select/b4.1.jpg","img/dog_select/b4.2.jpg","img/dog_select/b4.3.jpg","img/dog_select/v1.jpg","高品质纯种柯基犬  廣泰犬舍","5年淘狗通","犬种：柯基犬 公（DD） 有血统证书","廣泰犬舍 广州","3000","img/dog_select/4.1.jpg","img/dog_select/4.2.jpg","img/dog_select/4.3.jpg","img/dog_select/l4.1.jpg","img/dog_select/l4.2.jpg","img/dog_select/l4.3.jpg"),
(05,"img/dog_select/b5.1.jpg","img/dog_select/b5.2.jpg","img/dog_select/b5.3.jpg","img/dog_select/v1.jpg","【半年健康保障】泰迪出售 德佳犬舍","5年淘狗通","犬种：泰迪 公（DD） 有血统证书","德佳犬舍","3000","img/dog_select/5.1.jpg","img/dog_select/5.2.jpg","img/dog_select/5.3.jpg","img/dog_select/l5.1.jpg","img/dog_select/l5.2.jpg","img/dog_select/l5.3.jpg"),
(06,"img/dog_select/b6.1.jpg","img/dog_select/b6.2.jpg","img/dog_select/b6.3.jpg","img/dog_select/v1.jpg","官方担保交易 泰迪 公品质第一 诚信第一 品质健康保障","5年淘狗通","犬种：泰迪 公（DD） 有血统证书","泰迪乐园 朝阳","3000","img/dog_select/6.1.jpg","img/dog_select/6.2.jpg","img/dog_select/6.3.jpg","img/dog_select/l6.1.jpg","img/dog_select/l6.2.jpg","img/dog_select/l6.3.jpg"),
(07,"img/dog_select/b7.1.jpg","img/dog_select/b7.2.jpg","img/dog_select/b7.3.jpg","img/dog_select/v2.jpg","五钻信誉 纯种宠物狗狗 保纯保健康 疫苗和驱虫已做完","3年淘狗通","犬种：吉娃娃 母（MM） 有血统证书","宠物宝贝 中原区","3000","img/dog_select/7.1.jpg","img/dog_select/7.2.jpg","img/dog_select/7.3.jpg","img/dog_select/l7.1.jpg","img/dog_select/l7.2.jpg","img/dog_select/l7.3.jpg"),
(08,"img/dog_select/b8.1.jpg","img/dog_select/b8.2.jpg","img/dog_select/b8.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：伯恩山犬 公（DD） 有血统证书","星星乐园 郑州市","3000","img/dog_select/8.1.jpg","img/dog_select/8.2.jpg","img/dog_select/8.3.jpg","img/dog_select/l8.1.jpg","img/dog_select/l8.2.jpg","img/dog_select/l8.3.jpg"),
(09,"img/dog_select/b9.1.jpg","img/dog_select/b9.2.jpg","img/dog_select/b9.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：博美 公（DD） 有血统证书","星星乐园 郑州市","2000","img/dog_select/9.1.jpg","img/dog_select/9.2.jpg","img/dog_select/9.3.jpg","img/dog_select/l9.1.jpg","img/dog_select/l9.2.jpg","img/dog_select/l9.3.jpg"),
(10,"img/dog_select/b10.1.jpg","img/dog_select/b10.2.jpg","img/dog_select/b10.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：柯基 公（DD） 有血统证书","星星乐园 郑州市","2000","img/dog_select/10.1.jpg","img/dog_select/10.2.jpg","img/dog_select/10.3.jpg","img/dog_select/l10.1.jpg","img/dog_select/l10.2.jpg","img/dog_select/l10.3.jpg"),
(11,"img/dog_select/b11.1.jpg","img/dog_select/b11.2.jpg","img/dog_select/b11.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：法国斗牛犬 公（DD） 有血统证书","星星乐园 郑州市","3000","img/dog_select/11.1.jpg","img/dog_select/11.2.jpg","img/dog_select/11.3.jpg","img/dog_select/l11.1.jpg","img/dog_select/l11.2.jpg","img/dog_select/l11.3.jpg"),
(12,"img/dog_select/b12.1.jpg","img/dog_select/b12.2.jpg","img/dog_select/b12.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：法国斗牛犬 公（DD） 有血统证书","星星乐园 郑州市","3000","img/dog_select/12.1.jpg","img/dog_select/12.2.jpg","img/dog_select/12.3.jpg","img/dog_select/l12.1.jpg","img/dog_select/l12.2.jpg","img/dog_select/l12.3.jpg"),
(13,"img/dog_select/b13.1.jpg","img/dog_select/b13.2.jpg","img/dog_select/b13.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：博美犬 公（DD） 有血统证书","星星乐园 郑州市","4000","img/dog_select/13.1.jpg","img/dog_select/13.2.jpg","img/dog_select/13.3.jpg","img/dog_select/l13.1.jpg","img/dog_select/l13.2.jpg","img/dog_select/l13.3.jpg"),
(14,"img/dog_select/b14.1.jpg","img/dog_select/b14.2.jpg","img/dog_select/b14.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：泰迪 公（DD） 有血统证书","星星乐园 郑州市","4000","img/dog_select/14.1.jpg","img/dog_select/14.2.jpg","img/dog_select/14.3.jpg","img/dog_select/l14.1.jpg","img/dog_select/l14.2.jpg","img/dog_select/l14.3.jpg"),
(15,"img/dog_select/b15.1.jpg","img/dog_select/b15.2.jpg","img/dog_select/b15.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：吉娃娃犬 公（DD） 有血统证书","星星乐园 郑州市","5000","img/dog_select/15.1.jpg","img/dog_select/15.2.jpg","img/dog_select/15.3.jpg","img/dog_select/l15.1.jpg","img/dog_select/l15.2.jpg","img/dog_select/l15.3.jpg"),
(16,"img/dog_select/b16.1.jpg","img/dog_select/b16.2.jpg","img/dog_select/b16.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：金毛 公（DD） 有血统证书","星星乐园 郑州市","3000","img/dog_select/16.1.jpg","img/dog_select/16.2.jpg","img/dog_select/16.3.jpg","img/dog_select/l16.1.jpg","img/dog_select/l16.2.jpg","img/dog_select/l16.3.jpg"),
(17,"img/dog_select/b17.1.jpg","img/dog_select/b17.2.jpg","img/dog_select/b17.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：拉布拉多犬 公（DD） 有血统证书","星星乐园 郑州市","4000","img/dog_select/17.1.jpg","img/dog_select/17.2.jpg","img/dog_select/17.3.jpg","img/dog_select/l17.1.jpg","img/dog_select/l17.2.jpg","img/dog_select/l17.3.jpg"),
(18,"img/dog_select/b18.1.jpg","img/dog_select/b18.2.jpg","img/dog_select/b18.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：马犬 公（DD） 有血统证书","星星乐园 郑州市","3000","img/dog_select/18.1.jpg","img/dog_select/18.2.jpg","img/dog_select/18.3.jpg","img/dog_select/l18.1.jpg","img/dog_select/l18.2.jpg","img/dog_select/l18.3.jpg"),
(19,"img/dog_select/b19.1.jpg","img/dog_select/b19.2.jpg","img/dog_select/b19.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：萨摩耶 公（DD） 有血统证书","星星乐园 郑州市","2000","img/dog_select/19.1.jpg","img/dog_select/19.2.jpg","img/dog_select/19.3.jpg","img/dog_select/l19.1.jpg","img/dog_select/l19.2.jpg","img/dog_select/l19.3.jpg"),
(20,"img/dog_select/b20.1.jpg","img/dog_select/b20.2.jpg","img/dog_select/b20.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：约克夏 公（DD） 有血统证书","星星乐园 郑州市","3000","img/dog_select/20.1.jpg","img/dog_select/20.2.jpg","img/dog_select/20.3.jpg","img/dog_select/l20.1.jpg","img/dog_select/l20.2.jpg","img/dog_select/l20.3.jpg"),
(21,"img/dog_select/b21.1.jpg","img/dog_select/b21.2.jpg","img/dog_select/b21.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：比熊 母（MM） 有血统证书","爱屋即屋名犬繁殖 通州","2000","img/dog_select/21.1.jpg","img/dog_select/21.2.jpg","img/dog_select/21.3.jpg","img/dog_select/l21.1.jpg","img/dog_select/l21.2.jpg","img/dog_select/l21.3.jpg"),
(22,"img/dog_select/b22.1.jpg","img/dog_select/b22.2.jpg","img/dog_select/b22.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：吉娃娃（MM） 有血统证书","泰迪乐园 朝阳","2500","img/dog_select/22.1.jpg","img/dog_select/22.2.jpg","img/dog_select/22.3.jpg","img/dog_select/l22.1.jpg","img/dog_select/l22.2.jpg","img/dog_select/l22.3.jpg"),
(23,"img/dog_select/b23.1.jpg","img/dog_select/b23.2.jpg","img/dog_select/b23.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：柴犬（MM） 有血统证书","时尚爱宠 闸北区","2200","img/dog_select/23.1.jpg","img/dog_select/23.2.jpg","img/dog_select/23.3.jpg","img/dog_select/l23.1.jpg","img/dog_select/l23.2.jpg","img/dog_select/l23.3.jpg"),
(24,"img/dog_select/b24.1.jpg","img/dog_select/b24.2.jpg","img/dog_select/b24.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：德国牧羊犬（MM） 有血统证书","爱屋即屋名犬繁殖 通州","3200","img/dog_select/24.1.jpg","img/dog_select/24.2.jpg","img/dog_select/24.3.jpg","img/dog_select/l24.1.jpg","img/dog_select/l24.2.jpg","img/dog_select/l24.3.jpg"),
(25,"img/dog_select/b25.1.jpg","img/dog_select/b25.2.jpg","img/dog_select/b25.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：萨摩耶（MM） 有血统证书","爱屋即屋名犬繁殖 通州","3200","img/dog_select/25.1.jpg","img/dog_select/25.2.jpg","img/dog_select/25.3.jpg","img/dog_select/l25.1.jpg","img/dog_select/l25.2.jpg","img/dog_select/l25.3.jpg"),
(26,"img/dog_select/b26.1.jpg","img/dog_select/b26.2.jpg","img/dog_select/b26.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：约克夏（MM） 有血统证书","欧盟犬业  东城","2200","img/dog_select/26.1.jpg","img/dog_select/26.2.jpg","img/dog_select/26.3.jpg","img/dog_select/l26.1.jpg","img/dog_select/l26.2.jpg","img/dog_select/l26.3.jpg"),
(27,"img/dog_select/b27.1.jpg","img/dog_select/b27.2.jpg","img/dog_select/b27.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：柴犬（MM） 有血统证书","欧盟犬业  东城","2000","img/dog_select/27.1.jpg","img/dog_select/27.2.jpg","img/dog_select/27.3.jpg","img/dog_select/l27.1.jpg","img/dog_select/l27.2.jpg","img/dog_select/l27.3.jpg"),
(28,"img/dog_select/b28.1.jpg","img/dog_select/b28.2.jpg","img/dog_select/b28.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：沙皮犬（MM） 有血统证书","欧盟犬业  东城","2000","img/dog_select/28.1.jpg","img/dog_select/28.2.jpg","img/dog_select/28.3.jpg","img/dog_select/l28.1.jpg","img/dog_select/l28.2.jpg","img/dog_select/l28.3.jpg"),
(29,"img/dog_select/b29.1.jpg","img/dog_select/b29.2.jpg","img/dog_select/b29.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：泰迪（MM） 有血统证书","欧盟犬业  东城","2000","img/dog_select/29.1.jpg","img/dog_select/29.2.jpg","img/dog_select/29.3.jpg","img/dog_select/l29.1.jpg","img/dog_select/l29.2.jpg","img/dog_select/l29.3.jpg"),
(30,"img/dog_select/b30.1.jpg","img/dog_select/b30.2.jpg","img/dog_select/b30.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：雪纳瑞（MM） 有血统证书","欧盟犬业  东城","2000","img/dog_select/30.1.jpg","img/dog_select/30.2.jpg","img/dog_select/30.3.jpg","img/dog_select/l30.1.jpg","img/dog_select/l30.2.jpg","img/dog_select/l30.3.jpg"),
(31,"img/dog_select/b31.1.jpg","img/dog_select/b31.2.jpg","img/dog_select/b31.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：沙皮（DD） 有血统证书","时尚爱宠 闸北区","2000","img/dog_select/31.1.jpg","img/dog_select/31.2.jpg","img/dog_select/31.3.jpg","img/dog_select/l31.1.jpg","img/dog_select/l31.2.jpg","img/dog_select/l31.3.jpg"),
(32,"img/dog_select/b32.1.jpg","img/dog_select/b32.2.jpg","img/dog_select/b32.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：吉娃娃（DD） 有血统证书","时尚爱宠 闸北区","2000","img/dog_select/32.1.jpg","img/dog_select/32.2.jpg","img/dog_select/32.3.jpg","img/dog_select/l32.1.jpg","img/dog_select/l32.2.jpg","img/dog_select/l32.3.jpg"),
(33,"img/dog_select/b33.1.jpg","img/dog_select/b33.2.jpg","img/dog_select/b33.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：松狮犬（DD） 有血统证书","时尚爱宠 闸北区","3000","img/dog_select/33.1.jpg","img/dog_select/33.2.jpg","img/dog_select/33.3.jpg","img/dog_select/l33.1.jpg","img/dog_select/l33.2.jpg","img/dog_select/l33.3.jpg"),
(34,"img/dog_select/b34.1.jpg","img/dog_select/b34.2.jpg","img/dog_select/b34.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：比熊犬（DD） 有血统证书","爱屋即屋名犬繁殖  通州","3000","img/dog_select/34.1.jpg","img/dog_select/34.2.jpg","img/dog_select/34.3.jpg","img/dog_select/l34.1.jpg","img/dog_select/l34.2.jpg","img/dog_select/l34.3.jpg"),
(35,"img/dog_select/b35.1.jpg","img/dog_select/b35.2.jpg","img/dog_select/b35.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：柴犬（DD） 有血统证书","爱屋即屋名犬繁殖  通州","3000","img/dog_select/35.1.jpg","img/dog_select/35.2.jpg","img/dog_select/35.3.jpg","img/dog_select/l35.1.jpg","img/dog_select/l35.2.jpg","img/dog_select/l35.3.jpg"),
(36,"img/dog_select/b36.1.jpg","img/dog_select/b36.2.jpg","img/dog_select/b36.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：拉布拉多犬（MM） 有血统证书","爱屋即屋名犬繁殖  通州","3000","img/dog_select/36.1.jpg","img/dog_select/36.2.jpg","img/dog_select/36.3.jpg","img/dog_select/l36.1.jpg","img/dog_select/l36.2.jpg","img/dog_select/l36.3.jpg"),
(37,"img/dog_select/b37.1.jpg","img/dog_select/b37.2.jpg","img/dog_select/b37.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：约克夏（MM） 有血统证书","爱屋即屋名犬繁殖  通州","3000","img/dog_select/37.1.jpg","img/dog_select/37.2.jpg","img/dog_select/37.3.jpg","img/dog_select/l37.1.jpg","img/dog_select/l37.2.jpg","img/dog_select/l37.3.jpg"),
(38,"img/dog_select/b38.1.jpg","img/dog_select/b38.2.jpg","img/dog_select/b38.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：吉娃娃（MM） 有血统证书","爱屋即屋名犬繁殖  通州","3000","img/dog_select/38.1.jpg","img/dog_select/38.2.jpg","img/dog_select/38.3.jpg","img/dog_select/l38.1.jpg","img/dog_select/l38.2.jpg","img/dog_select/l38.3.jpg"),
(39,"img/dog_select/b39.1.jpg","img/dog_select/b39.2.jpg","img/dog_select/b39.3.jpg","img/dog_select/v2.jpg","保纯种健康 签终身质保协议淘狗网五钻店铺","3年淘狗通","犬种：拉布拉多（MM） 有血统证书","爱屋即屋名犬繁殖  通州","3000","img/dog_select/39.1.jpg","img/dog_select/39.2.jpg","img/dog_select/39.3.jpg","img/dog_select/l39.1.jpg","img/dog_select/l39.2.jpg","img/dog_select/l39.3.jpg");
CREATE TABLE sd(
	did    INT  PRIMARY KEY AUTO_INCREMENT,
	title  VARCHAR(64),
        subtitle  VARCHAR(128),
	d_name  VARCHAR(32),
	read_num    VARCHAR(32),
	show_date   VARCHAR(32),
	img_dog     VARCHAR(128)
);
INSERT INTO sd VALUES
("001","挑选阿拉斯加有妙招","听朋友们说，他们分不清哈士奇和阿拉斯加这两种狗狗，但其实小编觉得他们还是很容易区分的，首先他们的毛色就非常明显，其次，他们的表情也就是五官也是非常容易区分的。[详情]","阿拉斯加犬","阅读954","2018/07/05","img/sd.img/1.jpg"),	
("002","挑选蝴蝶犬不容易，多了解知识才能买到良品","说起这个蝴蝶犬，那是在西方国家很有名的犬种。作为伴侣或者玩具是再好不过的了，它可以让主人的心情变得非常的高兴。蝴蝶犬外形俏丽，智商也是非常的高[详情]","蝴蝶犬","阅读845","018/07/03","img/sd.img/2.jpg"),	
("003","如何养好一只凶狠藏獒？","人们随着现在生活水平不断的提高，生活节奏的加快，人们因为太忙，所以来不及要孩子，就是想让自己没有那么大压力。但是不要小孩子却依旧有其他方面的压力，所以人们就会通[详情]","藏獒","阅读755","2018/07/05","img/sd.img/3.jpg"),	
("004","贵宾犬挑选有窍门","正在读这篇文章的你是不是打算养一条狗？又或者是不是正打算要豢养贵宾犬？那么如果有这样的需求，就来看看这篇文章吧。贵宾犬的可爱自然是非常吸引我们注意的[详情]","贵宾犬","阅读645","2018/07/05","img/sd.img/4.jpg"),	
("005","买狗朋友看过来，挑选银狐犬有方法","喜欢养宠物的朋友们大多数对于狗都非常的满意，想要一只犬类做宠物的朋友们可以说不在少数。但是同样是狗，也有很多的品种，不同的品种有不同的特性。在众多的犬种中[详情]","银狐犬 ","阅读534","2018/6/22","img/sd.img/5.jpg"),	
("006","分享柴犬挑选技巧，教你如何看柴犬幼犬的品相","柴犬是不少人喜欢饲养的一个犬种，不过有不少的人有这样的疑问，那么就是柴犬幼犬如何看品种纯不纯，在挑选幼犬的时候，头部大一些的为优质的，后脑勺也要适度的隆起[详情]","柴犬","阅读533","2018/6/25","img/sd.img/6.jpg"),	
("007","学会这些你也会挑选博美犬","在十八世纪之前，博美犬的祖先是一只中型犬，后来经过人工的配种，才有了现在大家看到博美犬的样子，娇小而且可爱，博美犬因为聪明被很多人喜欢，智商很高，唯一不好的习性[详情]","博美犬","阅读546","2018/6/28","img/sd.img/7.jpg"),	
("008","如何正确区分比熊犬和泰迪呢","平日里，如果遇见比熊犬和泰迪，大家分得清楚吗？要知道比熊犬和泰迪都是非常受大家欢迎的宠物狗之一，但有很多人都无法将它们区分开来[详情]","泰迪犬","阅读478","2018/6/30","img/sd.img/8.jpg"),	
("009","呆萌可爱的萨摩耶如何挑选","呆萌可爱的萨摩耶成为了越来越多的人在挑选狗狗时所青睐的品种，那么一只优质的萨摩耶应该如何挑选呢？[详情]","萨摩耶","阅读456","2018/07/01","img/sd.img/9.jpg"),	
("010","怎样选纯种的卷毛比熊犬呢？","有一种狗狗，它很萌，很可爱，因此特别受大众的欢迎，它就是卷毛比熊犬。往往越是纯种的越被人们喜欢，那么要如何选购一只纯种的卷毛比熊犬呢[详情]","比熊犬","阅读343","2018/07/03","img/sd.img/10.jpg");	
CREATE  TABLE show_details(
  lid  INT  PRIMARY KEY AUTO_INCREMENT,
  prodect_price  INT,
  count  VARCHAR(32),
  age  VARCHAR(32),
  zhen VARCHAR(16),
  province  VARCHAR(12)
);
INSERT INTO show_details VALUES
(01,5000,"2","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","郑州"),
(null,5000,"3","3-5月龄","3针","上海"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"7","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"4","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"3","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"1","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"3","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"9","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"5","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"9","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"7","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"3","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"6","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"3","3-5月龄","3针","北京"),
(null,5000,"2","3-5月龄","3针","北京"),
(null,5000,"9","3-5月龄","3针","北京");
create table display_details(
  lid  INT  PRIMARY KEY AUTO_INCREMENT,
  kind  VARCHAR(32),
  otherName VARCHAR(32),
  height  VARCHAR(32),
  weight  VARCHAR(32),
  life VARCHAR(32),
  sort VARCHAR(32),
  address VARCHAR(32)
);
INSERT INTO display_details VALUES
(01,"法国斗牛犬","牛头犬","30-31cm","30-31cm","12-15岁","家庭犬","法国"),
(NULL,"柯基犬","柯基犬","30-31cm","30-31cm","12-15岁","家庭犬","法国"),
(NULL,"比熊犬","比熊犬","30-31cm","30-31cm","12-15岁","家庭犬","法国"),
(NULL,"柯基犬"," 柯基犬"," 25.4～30.5cm"," 25.4～30.5cm"," 12—15年","家庭犬"," 英国"),
(NULL,"泰迪犬","泰迪犬"," 24—28cm"," 24—28cm"," 13—15岁","家庭犬","法国"),
(NULL,"泰迪犬","泰迪犬","24—28cm","24—28cm","24—28cm","家庭犬","法国"),
(NULL," 吉娃娃"," 奇娃娃"," 12～20cm"," 12～20cm"," 13-14年","家庭犬","墨西哥"),
(NULL,"伯恩山犬","伯尔尼兹山地犬","61—71cm","61—71cm"," 9-12年","工作犬"," 瑞士"),
(NULL," 博美犬"," 松鼠犬","30—45cm","30—45cm","10—14年","家庭犬","德国"),
(NULL,"柯基犬","柯基犬","30-31cm","30-31cm","12-15岁","家庭犬","法国");
create table Desktop(
cid int primary key auto_increment,
img varchar(128),
headline varchar(24),
tilte varchar(128),
cdu int,
dates varchar(16)
);
insert into Desktop values
(null,'img/Desktop/1 (22).jpg','泰迪犬就是一个戏精，和人一起赛跑你见过吗','泰迪犬的讨人程度，很多人都知道，爱的不行不行的，前段时间在重庆的一个结束街道上，一个泰迪和一个男子在跑步比赛，惹来了很多人的围观。','252','2108/07/05'),
(null,'img/Desktop/1 (16).jpg','导盲犬陪主人出门坐公交车遭嫌弃','导盲犬一最伟大的狗狗之一，很多拉布拉多因为性格温顺智商高被训练成导盲犬，而且一条导盲犬训练成本是非常高的，所以现在导盲犬的数量远远不能满足盲人们的需要。','158','2108/07/05'),
(null,'img/Desktop/1 (6).jpg','狗狗坐车“兜风”，坐在哪里合适？','拉风的事情大家经常看到，有不少人炫富拉风，有不少的人开着豪车拉风，那么大家知道吗？其实狗狗也会拉风呢。','57','2108/07/05'),
(null,'img/Desktop/1 (34).jpg','什么样的狗狗适合选美','大家往往知道人有选美大赛，却很少知道狗狗也是有选美比赛的。其实在英美法这些地区，狗狗的选美是很常见的。可是什么样的狗狗才是适合参加选美比赛的呢','150','2108/07/05'),
(null,'img/Desktop/1 (30).jpg','2018年阜阳萌宠嘉年华已经圆满落幕，各种狗狗尽显风采','本新闻来自凤凰网安徽综合，时间在2018年4月30日的下去，2018年阜阳萌宠嘉年华的活动在阜阳商厦的时代广场圆满的落幕了，来自阜阳的50组家庭带着自己','45','2108/07/05'),
(null,'img/Desktop/1 (11).jpg','阿拉斯加赌气说自己不回家，养狗人的人说想哭','阿拉斯加在大家的印象中，或许没有哈士奇、萨摩耶这样的犬类知名，但是它还是有可爱让主人又舍不得骂的一面','57','2108/07/05'),
(null,'img/Desktop/1 (17).jpg','宠物狗-花花救了大家一命','一天夜晚的22:00，在大家毫无防备的情况下，一个仓库的火苗在慢慢的吞噬着这里的每一个空间，火势在不知不觉的蔓延，当时大家都刚刚入睡','157','2108/07/04'),
(null,'img/Desktop/1 (50).jpg','排便也是宠物狗沟通交流的方式——宠物训练师宁蔚','宠物行业有很多的训练师，不过在2018年4月30日北京晚报上报道了一个训练师名字叫做宁蔚，他在热门的综艺节目上火了一把，他告诉我们：不要小看了宠物的狗的排泄物','220','2108/07/04'),
(null,'img/Desktop/1 (27).jpg','八哥-罗拉带给人的惊喜','近期，有一个福利彩票站点的生意甚是火爆，每天都是人来人往的，而且来的人都是面带笑容，引起了有关媒体的注意，据这里的彩民透露，这里的生意之所以这么的火爆','218','2108/07/04'),
(null,'img/Desktop/1 (42).jpg','宠物猪的“肥胖症”是真是假','生活中我们很多人都喜欢养猫，狗、鸟这些宠物，但是也有人喜欢养一些不一样的宠物。近日，在网络上有一则新闻，说是一个网友养了一头宠物猪','24','2108/07/04'),
(null,'img/Desktop/1 (18).jpg','不文明养狗行为该谁来买单？','现如今养狗的人越来越多，这一点我们从自家小区就可以看得出来。我们很可能发现，当我们早晨出门的时候，或者是晚上在小区散步的时候，都会发现有一些遛狗的朋友','82','2108/07/03'),
(null,'img/Desktop/1 (43).jpg','宠物狗丢失，张女士彻夜未眠四处寻犬','这宠物养久了，自然会跟主人产生感情，我们经常会听到有一些新闻报道，宠物狗丢失，急坏主人的案例，其实这也是很正常的事情。今天我们要说的这个新闻','38','2108/07/03'),
(null,'img/Desktop/1 (12).jpg','吃不胖的博美，原来问题出在这','家住河北的张女士养的博美犬有一个很奇怪的现象，那就是不管吃什么食物，怎么吃营养品，都不会变胖。似乎这个魔鬼身材是这条博美天生的一样，不能改变','45','2108/07/03'),
(null,'img/Desktop/1 (14).jpg','导盲犬被拒酒店外，谁对谁错？','五一假期是很多小伙伴们都比较开心的时候，当然，外出旅游住酒店也是比较正常的事情。有这么一件事，一位盲人带着导盲犬住酒店被拒，这让人们对此产生了争议','12','2108/07/03'),
(null,'img/Desktop/1 (38).jpg','哈士奇被剃光毛后患上了焦虑症','对于养过哈士奇的朋友们大多对于这种狗感觉到很无奈，可能这天底下最二的动物就是这个哈士奇了。说起有关于哈士奇的新闻，那真可算得上是成堆成堆的','24','2108/07/03'),
(null,'img/Desktop/1 (44).jpg','诡异现象，小狗食量惊人却不会变胖','我们都知道，现在女孩子都在各种的减肥，可以说方法各异，但效果始终是不理想。针对这个情况也有不少女孩曾经调侃地说，如果该吃什么吃什么，永远不会胖该多好呢','50','2108/07/03'),
(null,'img/Desktop/1 (4).jpg','会哄人的金毛，让主人热泪盈眶','提到宠物，很多朋友们都倍感亲切，因为大家都有过养宠物的经历，更是对这个宠物非常喜欢。宠物有讨人喜欢的一面，当然也有让主人感动的一面','145','2108/07/02'),
(null,'img/Desktop/1 (37).jpg','泰迪狗狗衣服还在买，自己给它做简单有爱','很多人认为城市的狗狗太做作，太矫情，还穿衣服。不得不说，有这样想法的人肯定没有养狗，或者说肯定是没有细心仔细的养狗狗。家有泰迪的主人都会知道','280','2108/07/02'),
(null,'img/Desktop/1 (25).jpg','属于“汪星人”的黄丝带的意义大家懂吗','在人类的世界里面，有好几种丝带，这些丝带都带变着不同的意义，比如红丝带代表艾滋病的标志。绿丝带代表环保意识或者解放农业等等。那么你知道黄丝带代表着什么意义吗','45','2108/07/02'),
(null,'img/Desktop/1 (46).jpg','楼房养狗吵到邻居，物业建议其妥善处理','养狗是一个乐趣，也是一个充实生活的好办法。时下养狗已经成为一个时尚，而且越来越多的人开始养狗。小区养狗不像农村养狗那样有地方，也有充足的空间供其折腾','147','2108/07/01');
create table XT(
  did INT PRIMARY KEY AUTO_INCREMENT,
  pid VARCHAR(32),
  oid VARCHAR(32)
);
INSERT INTO XT VALUES
(01,"1234567","1234567"),
(NULL,"12345678","12345678"),
(NULL,"123456789","123456789"),
(NULL,"12345","12345");
 CREATE TABLE ygzs_details(
     uid    INT PRIMARY KEY AUTO_INCREMENT,   
     img   VARCHAR(128),
     title  VARCHAR(64),
     subtitle  VARCHAR(240),
     uname  VARCHAR(32),
     readCount  VARCHAR(128),
     date  VARCHAR(32)
   );
   INSERT INTO ygzs_details VALUES
   (1,"img/yg-img/6_1430_496330fafcf437f.jpg",
   "怎么预防狗狗中暑，希望可以帮助到各位铲屎官",
   "很多人都喜欢养毛孩子，而随着人类社会的发展，
   动物的福利待遇也得到了很高的关注，大家都叫自己身边的动物
   为伴侣动物，其中最常见的就是猫咪和狗狗了，
   可是夏天酷热难耐",
   "泰迪犬","阅读26","2018/06/24"),
   (2,"img/yg-img/6_1430_de9ebba21b1dd3a.jpg",
   "怎么养可爱的吉娃娃，喂养的正确方法",
   "吉娃娃是比较早的时候就有的一种品种，非常机敏，体型也较小很适合家养。该如何养它对于新手来说就是个问题。首先我们给的食物需要很干净卫生，主要是要新鲜",
   "吉娃娃","阅读23","2018/06/24"),
   (3,"img/yg-img/2_124844_84369adcd6a9a28.jpg",
   "比格犬不同的肢体语言代表的含义",
   "我们可以用语言清晰的表达自己的想法，可是比格犬不会说话，不能用语言来告诉我们它内心的一些想法，那么，很多人都想要知道，比格犬是怎么来交流的呢，其实，比格犬也有自[详情]",
   "比格犬","阅读15","2018/06/24"),  
   (4,"img/yg-img/2_43142_a22ab1cd2195346.jpg",
   "沙皮狗最好少喂它饮用矿泉水",
   "对于我们来说，喝矿泉水是经常的事，尤其是在夏天的时候，很多人都喜欢喝冰镇的矿泉水或者是饮料来解渴或消暑。夏天在我们带沙皮狗出去玩的时候，沙皮狗是很容易缺水的，每[详情]",
   "沙皮狗","阅读14","2018/06/24"),  
   (5,"img/yg-img/2_130379_e7ba5bb9febf7ce.jpg",
   "爬楼梯会给西高地带来哪些影响",
   "随着我们生活的水平越来越高，搬进楼房的饲主越来越多，通常我们会很喜欢爬楼梯，这样在爬楼梯的过程中可以适当的锻炼身体，家养西高地的主人在爬楼梯的同时，也会喜欢让西[详情]",
   "西高地","阅读15","2018/06/24"),
   (6,"img/yg-img/2_406_9931e7ba88f5c08.jpg",
   "如何让博美犬接受新换的生活环境以及新主人",
   "对于刚刚抱养回来的博美犬来说，在换了生活环境和主人以后，它的情绪和习性会发生很大的变化的。这些变化有的时候会严重的影响到博美犬的正常生活，所以主人们在打算饲养博[详情]",
   "博美犬","阅读21","2018/06/24"),
   (7,"img/yg-img/2_578_40ef2a3316e3c1d.jpg",
   "饲养吉娃娃有必要配备一个专门的医生么",
   "从吉娃娃健康的角度来讲，这是非常必要的，特别是对于血统比较纯种吉娃娃来说。因为纯种的吉娃娃它本身的价值就是比较高的，特别是一些参加过比赛而且成绩比较优秀的吉娃娃[详情]",
   "吉娃娃","阅读3","2018/06/24"),   
   (9,"img/yg-img/2_1283_7e15a38233742e7.jpg",
   "生长期的泰迪犬幼犬怎样喂养是最科学的",
   "关于喂养泰迪犬幼犬的这个问题上，已经有很多的版本了。但是不管什么版本，只要是科学合理的喂养方式都是主人们可以使用的。特别是不同年龄段的泰迪犬，它们的喂养方式肯定[详情]",
   "泰迪犬","阅读13","2018/06/24"),
   (10,"img/yg-img/2_390_8e0479c14f789ba.jpg",
   "藏獒的玩具要避免危险材料",
   "藏獒的玩具是它们很重要的必须品，尤其是我们不在家的时候，更是它们不能缺少的玩伴。我们在它刚到家的时候就会为它准备各式各样的玩具，让藏獒价格在新的环境不会觉得孤单[详情]",
   "藏獒","阅读151","2018/06/24"),
   (11,"img/yg-img/2_122072_5098c02fc156498.jpg",
   "萨摩耶犬也需要定期锻炼身体",
   "我们每天都要去锻炼身体，提高身体素质，提高免疫力，来保证有一个健康的身体，萨摩耶犬也是一样的，它们也需要一些日常的锻炼来保证身体健康强壮，而且每只萨摩耶犬都是很[详情]",
   "萨摩耶犬","阅读166","2018/06/22"),
   
   (12,"img/yg-img/2_410_b08080854f3e4f3.jpg",
   "怎样避免拉布拉多犬运动中受到伤害",
   "拉布拉多犬是很喜欢动的一种动物，它们每天都会有很多不同的运动，玩耍，散步，还有主人们对它们的一些技能训练，那么在运动之中，我们要如何保护自己的宠物狗，避免它们在[详情]",
   "拉布拉多","阅读185","2018/06/22"),
   (13,"img/yg-img/2_125003_ac6511fb5b22b0e.jpg",
   "如何帮助京巴犬消灭敌人——跳蚤",
   "京巴犬身体有浓密的被毛，因此它的被毛是寄生虫最喜欢的地点，跳蚤是一种以吸血为主的寄生虫，它在京巴犬身体上会长时间的吸收它的血液，跳蚤是京巴犬最不喜欢的寄生虫，每[详情]",
   "京巴","阅读206","2018/06/22"),
   
   (14,"img/yg-img/2_405_65c46c080d46390.jpg",
   "美容秘诀 教教大家如何给博美犬做美容",
   "家长们都知道自己的博美犬需要进行美容工作，但是又不想去昂贵的宠物美容会所是不是？但是自己给爱犬美容又不知道要从何下手是不是？现在网上就流传了许多给博美犬美容的知[详情]",
   "博美犬","阅读213","2018/06/22"),
   (15,"img/yg-img/2_574_c8298fa624ec341.jpg",
   "给吉娃娃梳理毛发要科学正确",
   "不要看吉娃娃是一只短毛犬就不需要梳毛了，其实在吉娃娃的生活中也是需要梳理毛发的。经常给爱犬梳毛可以减少皮肤病，去除一些跳蚤等一些皮外的寄生虫，最重要的一定就是可[详情]",
   "吉娃娃","阅读194","2018/06/22"),
   (16,"img/yg-img/2_144729_bb3077a9ec15505.jpg",
   "教你如何洗澡帮助牛头梗去屑成功",
   "牛头梗毛发出现毛屑会影响它的整体外观，想要牛头梗干净和卫生，我们就要想一些针对牛头梗毛屑的方法，很多饲主都知道给牛头梗洗澡可以减少和缓解毛屑的出现，但是饲主却不[详情]",
   "牛头梗","阅读107","2018/06/22"),
   (17,"img/yg-img/2_120006_ae814da37755a1b.jpg",
   "家庭医生 马尔济斯犬出现食物中毒时怎么办",
   "马尔济斯犬看到好奇的事物总是喜欢把东西放在嘴里咀嚼最后吞下，马尔济斯犬这种行为很容易出现误食的情况，这样的事情是很危险的，马尔济斯犬价格的肠胃虽然可以消化一些食[详情]",
   "马尔济斯","阅读105","2018/06/22"),
   (18,"img/yg-img/2_129998_7eebc4327777abd.jpg",
   "关于西高地维生素的控制和食物中的维生素",
   "维生素是我们和西高地身体中都不可缺少的一种有机化合物，不同种类的维生素对西高地均有着不同的生理作用与特性，因此，这就要求在在西高地吃食的配制过程中，我们要严格掌[详情]",
   "西高地","阅读109","2018/06/22"),
   (19,"img/yg-img/2_139699_8903f4f1201fae3.jpg",
   "老龄喜乐蒂犬的日常护理方法",
   "随着我们生活水平的提高，饲养宠物狗的人士也是越来越多，对于喜乐蒂犬健康的关注也是越来越高，对喜乐蒂犬的饲养护理和医疗要求也是越来越严格，在这样的前提条件下，自家[详情]",
   "喜乐蒂","阅读66","2018/06/22"),
   (20,"img/yg-img/2_86092_cf405412e6c714a.jpg",
   "罗威纳犬主人家庭消毒的误区有哪些",
   "宠物作为我们现在很多人的家庭伴侣，我们每天会有很长的时间和它们在一起，宠物们经常出门接触外界的环境，主人们知不知道我们应该怎么去保护它的健康和我们人类的自身安全[详情]",
   "罗威纳犬","阅读74","2018/06/22"),
   (21,"img/yg-img/2_125651_bc1b82c502b3f44.jpg",
   "京巴狗到底能不能吃粽子呢",
   "粽子是端午节少不了的食物，是我们中国历史上迄今为止文化积淀最深厚的传统食品，所以，没当到了端午节，各式各样的粽子就会出现在人们的面前，粽子清香淡雅，软糯滑腻，口[详情]",
   "京巴狗","阅读164","2018/06/21"),
   
   (22,"img/yg-img/2_131636_f656016872d7b74.jpg",
   "挑选健康腊肠犬的9大原则",
   "随着社会经济的发展，人们的生活水平也越来越高，饲养宠物也变成一件很平常的事，而饲养腊肠犬的人占了很大一部分，但是，很多第一次饲养腊肠犬的都不知道应该如何去挑选健[详情]",
   "腊肠犬","阅读165","2018/06/21"),
   
   
   (23,"img/yg-img/2_126114_7c7ed21d05704ef.jpg",
   "为您的可卡犬幼犬选择正确的食品",
   "我们都知道在不同阶段的狗狗所需要的营养也是不同的，比如幼年阶段需要为了生长发育提供更多的营养，而成年以后则是维持正常营养，保持狗狗的身体健康，所以我们在狗狗的饮[详情]",
   "可卡犬","阅读166","2018/06/21"),
   
   (24,"img/yg-img/2_25785_09d138cdae13730.jpg",
   "柯基犬啃骨头的误区以及不能吃的食物",
   "虽然说现在饲养柯基犬的人是越来越多，但是很多人在喂养方面还是停留在让柯基犬吃一些剩菜剩饭的状态，还有一些会觉得让柯基犬吃肉就是对柯基犬最好的了，但是，我们要知道[详情]",
   "柯基犬","阅读222","2018/06/21"),
   
   (25,"img/yg-img/2_126530_f50393930e1949f.jpg",
   "在喂食八哥犬时我们要注意的事项",
   "巴哥犬是一种很特别的狗狗，它的身体结构、肠胃结构、饮食习惯都与人、其它的动物有着太大的差别，而且还是一种较贪食的犬类，所以我们在喂食的过程中一定要掌握好供食的量[详情]",
   "巴哥犬","阅读297","2018/06/21"),
   (26,"img/yg-img/2_533_b76158026ce326e.jpg",
   "夏天雪纳瑞补充水份很重要",
   "夏天天气炎热，尤其是近几年，气温也是越来越高了，在夏天的时候，雪纳瑞们是最容易出汗的，因此，狗主人们一定要注意，这个季节一定不要让雪纳瑞们出现缺少的情况。我们在[详情]",
   "雪纳瑞","阅读259","2018/06/20"),
   (27,"img/yg-img/2_575_a4d18a709a47213.jpg",
   "夏天减轻吉娃娃在室内体味",
   "天气越来越热了，人们的着装也慢慢的变的肉隐肉现了，吉娃娃们也退掉了厚厚的毛发“轻装上阵”了，只是在这温暖的天气里，吉娃娃又出现了一大问题，那就是它身上那些怪怪的[详情]",
   "吉娃娃","阅读185","2018/06/20"),
   
   (28,"img/yg-img/2_334_550f64a3f213ac5.jpg",
   "夏天松狮犬能吃冰冷的食物吗",
   "夏天的时候，我们经常吃一些冰激凌、一些冰镇的西瓜等等来消暑，让我们的夏天不再那么炎热，而我们知道，松狮犬是最怕过夏天的，每当这个时候，我们总是会忍不住的也想要给[详情]",
   "松狮犬","阅读175","2018/06/20"),
   (29,"img/yg-img/2_48078_4b67b5746b9ff65.jpg",
   "大白熊犬生病的前兆有哪些",
   "饲主在照顾大白熊犬期间总是不知道它的身体到底是健康还是不健康，如果我们不能及时的发现大白熊犬身体出现异常，那么我们很容易耽误大白熊犬的病情，这样对宠物狗的身体健[详情]",
   "大白熊犬","阅读192","2018/06/20"),
   
   (30,"img/yg-img/2_138083_68ae2744dab1f04.jpg",
   "饲养约克夏最常见的问题有哪些",
   "虽然我们和约克夏相处的时间越来越长了，但是我们却还是不能很好的了解约克夏，很多饲主看到约克夏独自在玩耍时总是想要给约克夏找一个伴侣，就是因为我们这样的好心，让约[详情]",
   "约克夏","阅读207","2018/06/20"),
   
   (31,"img/yg-img/2_539_84dcc970040f880.jpg",
   "专业护理指导 怎样照顾年幼的雪纳瑞",
   "护理刚出生的雪纳瑞是我们饲主重要的事情，年幼的雪纳瑞身体各个机能还没有发育好，因此我们要让雪纳瑞避免接触不良的环境，这样我们才能保证雪纳瑞减少发生疾病的可能性，[详情]",
   "雪纳瑞","阅读135","2018/06/20"),
   
   (32,"img/yg-img/2_575_dad20cf3624111a.jpg",
   "生活常识 如何挑选出合适的吉娃娃",
   "挑选一只吉娃娃对于经验丰富的专家来说是很简单的，但是对于我们这个饲养新手来说。挑选吉娃娃需要丰富的知识和经验，如果我们只是单纯的听信卖狗人，买狗这样很容易导致挑[详情]",
   "吉娃娃","阅读118","2018/06/20"),
   (33,"img/yg-img/2_105864_c1401e254ac84d6.jpg",
   "不要给自家的银狐犬吃剩菜剩饭",
   "现在很多养狗的家庭都出现这样的一个状况，就是把自己吃剩的饭菜拿来喂银狐犬，那么你家的银狐犬也吃人吃剩的饭菜吗？是天天吃，还是偶尔吃，还是一点儿都不吃呢？其实，银[详情]",
   "银狐犬","阅读129","2018/06/20"),
   (34,"img/yg-img/2_43269_c31243cced5fb70.jpg",
   "我们要预防大白熊犬精神不佳",
   "大白熊犬没有精神，在饲养过程中是很比较常见的一种情况，每当这时候，大白熊犬就不喜欢动，有时候也会一直躺在狗窝中，对主人的挑逗不感兴趣，对送到面前的美食也无动于衷[详情]",
   "大白熊犬","阅读116","2018/06/20"),
   (35,"img/yg-img/2_136339_833cfba32fd05dc.jpg",
   "生活中喜乐蒂犬会出现打架的情况吗",
   "平时我们看到善良温顺的喜乐蒂犬时，总是会一味喜乐蒂犬不会打架，如果我们认为喜乐蒂犬好”欺负“，那我们就大错特错了，喜乐蒂犬很厉害的，只是喜乐蒂犬价格在生活中秉着[详情]",
   "喜乐蒂","阅读204","2018/06/19"),
   (36,"img/yg-img/2_107816_127c1c415079443.jpg",
   "家庭护理 银狐犬泪腺出现分泌物的原因有哪些",
   "眼睛是心灵的窗口，眼睛很敏感，如果银狐犬的眼睛中进入一点点的灰尘，银狐犬就会感觉很不舒服，生活中，我们会看到银狐犬的泪腺会出现很多的分泌物，这样不仅会影响到银狐[详情]",
   "银狐犬","阅读216","2018/06/19"),
   (37,"img/yg-img/2_86092_5e8b2566df331aa.jpg",
   "生活小常识 罗威纳犬出现挑食的情况怎么办",
   "我们大家都知道罗威纳犬性格很温顺，因此它是孩子最喜欢的小伙伴，随着罗威纳犬与我们生活相处的时间越来越长，罗威纳犬在食物总是喜欢跟我们讨价还价，罗威纳犬吃食物时如[详情]",
   "罗威纳犬","阅读213","2018/06/19"),
   
   (38,"img/yg-img/2_42530_9882262bcfc3420.jpg",
   "从洗澡谈健康 沙皮狗洗澡需要哪些小技巧",
   "想要沙皮狗身体保证清洁，我们就要给沙皮狗洗澡，很多时候饲主认为给沙皮狗洗澡是一件艰巨的任务，沙皮狗每次洗澡时总是会把水弄我们一身，时间久了对于给它洗澡，我们会感[详情]",
   "沙皮狗","阅读194","2018/06/19"),
   (39,"img/yg-img/2_131636_be4f4c1b070e4f2.jpg",
   "家庭护理 如何看出腊肠犬身体是否健康",
   "为了腊肠犬的健康，我们要定期的给腊肠犬检查身体，如果腊肠犬的身体不适会出现食欲不振，食量会明显的下降的情况，生病期间的腊肠犬是每一个饲主都不想要看到的事情，因此[详情]",
   "腊肠犬","阅读203","2018/06/19"),
   
   (40,"img/yg-img/2_112_cafdf6186707c6a.jpg",
   "夏天给哈士奇吹空调并非好事",
   "夏天的气温很高，尤其是近几年，最高温度有达到40度的诚实，这就让人们很难熬，更别说是长了一身毛毛的哈士奇了，它们才是最难受的，很多主人都很着急，看着自家哈士奇每[详情]",
   "哈士奇","阅读257","2018/06/19"),
   
   (41,"img/yg-img/2_1432_944ef76b8074d5d.jpg",
   "魅力引诱法 引诱自己的古代牧羊犬进食",
   "古代牧羊犬就像是小孩子一样，时常的会出现一些小脾气，出现小性子的时候就会不吃饭不搭理主人的情况，你家的古代牧羊犬是否也有这样的情况呢。在它不吃饭的时候是不是非常[详情]",
   "古代牧羊犬","阅读130","2018/06/19"),
   
   (42,"img/yg-img/2_122070_b8f277604addd41.jpg",
   "产期临近怎样照顾分娩前的萨摩耶母犬最正确",
   "如何照顾怀孕的萨摩耶母犬是主人们在这个时候最关心的话题了。萨摩耶母犬在怀孕的时候需要主人们注意的事情有很多，为了萨摩耶母犬能够顺利的分娩出萨摩耶宝宝，主人们可谓[详情]",
   "萨摩耶","阅读125","2018/06/19"),
   (43,"img/yg-img/2_390_556510bfa0d96cd.jpg",
   "选择什么样的运动方式对藏獒和主人是最有利的",
   "藏獒的运动量是和它的大小有一定的关系的。首先藏獒作为一只大型犬，它的是运动量就是相对其他小型犬来说比较大的。还有就是成年的藏獒要比藏獒幼犬的运动量大一些。不管宠[详情]",
   "藏獒耶","阅读128","2018/06/19"),
   (44,"img/yg-img/2_129841_5664b96d2ed9011.jpg",
   "基础护理 西高地的体味如何缓解和消失",
   "我们和西高地一起玩耍时总是会闻到一种刺鼻的味道，西高地身体有一条分泌腺，因此它的身体总是会分泌很多的味道，西高地身体出现这种气味会影响我们之间的相处，我们要想出[详情]",
   "西高地","阅读141","2018/06/18"),
   (45,"img/yg-img/2_365_8f7ee83eab1a1f4.jpg",
   "不同体型的贵宾犬之间有什么明显的区别",
   "我们都知道贵宾犬在体型上是可以分为标准型、迷你型、玩具型，有的地方还培育出了巨型贵宾犬。它们虽然统称为贵宾犬，但是因为体型的不同，所以也是有一定的区别的。首先不[详情]",
   "贵宾犬","阅读161","2018/06/18"),
   
   (46,"img/yg-img/2_587_9d8c33b036ea29a.jpg",
   "喂养新概念 如何掌握正确喂养金毛犬的原则",
   "金毛犬的喂养方法不是固定的，但是一定要讲究科学。主人们在饲养金毛犬的时候，应该按照金毛犬的具体情况来进行饲养的工作，事先给金毛犬价格制定一套科学合理的饮食计划是[详情]",
   "金毛","阅读284","2018/06/18"),
   (47,"img/yg-img/2_409_f63495dd2b15c4f.jpg",
   "正确使用食物 避免出现喂养拉布拉多犬的错误",
   "给拉布拉多犬提供充足的食物和给拉布拉多犬提供什么样的食物是同样重要的。主人们在喂养拉布拉多犬的过程当中，除了要注意给拉布拉多犬准备足够的食物之外，还要注意准备的[详情]",
   "拉布拉多","阅读367","2018/06/18"),
   
   (48,"img/yg-img/2_632_4f228bef0ab11d6.jpg",
   "德国牧羊犬一种最害怕的两种东西",
   "人们都会害怕对生命造成威胁的东西，德国牧羊犬也是不例外了，他也有自己的精神意识也有自己所害怕的东西。德国牧羊犬最为害怕的两种东西就是噪音、火，它的潜意识当中就是[详情]",
   "德国牧羊犬","阅读302","2018/06/18"),
   
   (49,"img/yg-img/2_498_b33281ffb68b856.jpg",
   "同步指导哺乳期前后阿拉斯加雪橇犬的营养需求",
   "处在哺乳期的阿拉斯加雪橇犬对于营养的需求是很大的，因为这个时候母犬不但要摄入足够的能量来维持自己的生长和发育，同是需要一些营养来供应给阿拉斯加雪橇犬幼犬奶水。因[详情]",
   "阿拉斯加犬","阅读254","2018/06/18"),
   
   (50,"img/yg-img/2_453_6588ff227f5ae3f.jpg",
   "对高加索犬进行返回和停住训练时有什么需要注意的",
   "高加索犬需要进行的训练项目有很多种，从最基本的生活习惯，和一些技巧性动作，都是主人们应该对高加索犬进行训练的项目。但是今天在这里小编只和大家说两种训练项目，一个[详情]",
   "高加索犬","阅读185","2018/06/18"),
   (51,"img/yg-img/2_43269_9e8b75182eab0a4.jpg",
   "夏日艳阳 如何给大白熊犬做防晒",
   "高加索犬需要进行的训练项目有很多种，从最基本的生活习惯，和一些技巧性动作，都是主人们应该对高加索犬进行训练的项目。但是今天在这里小编只和大家说两种训练项目，一个[详情]",
   "高加索犬","阅读185","2018/06/18");
   create table adminlogin(
     uid Int primary key auto_increment,
     uname varchar(32),
     upwd varchar(32)
   );
   insert into adminlogin values
   (01,"zsx",md5("12345678")),
   (null,"zhl",md5("12345678")),
   (null,"hh",md5("12345678"));
     
































