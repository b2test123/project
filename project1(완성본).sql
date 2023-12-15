CREATE TABLE product (
   pno          NUMBER          PRIMARY KEY,
   pname        VARCHAR2(40)    NOT NULL,
   price        NUMBER          NOT NULL,
   p_score      NUMBER,
   sal_num      NUMBER,
   pcontent     VARCHAR2(200),
   category		VARCHAR2(40),
   pfilename   VARCHAR2(40)
);
CREATE SEQUENCE seq_pno NOCACHE;

-- 강아지 먹거리
-- (강아지 사료)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료1', 42800, '강아지 사료1', '강아지 먹거리', 'dog_food1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료2', 48200, '강아지 사료2', '강아지 먹거리', 'dog_food3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료3', 38600, '강아지 사료3', '강아지 먹거리', 'dog_food5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료4', 52500, '강아지 사료4', '강아지 먹거리', 'dog_food7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료5', 39600, '강아지 사료5', '강아지 먹거리', 'dog_food9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료6', 34300, '강아지 사료6', '강아지 먹거리', 'dog_food11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료7', 47800, '강아지 사료7', '강아지 먹거리', 'dog_food13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료8', 56900, '강아지 사료8', '강아지 먹거리', 'dog_food15');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료9', 53200, '강아지 사료9', '강아지 먹거리', 'dog_food17');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료10', 63200, '강아지 사료10', '강아지 먹거리', 'dog_food19');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료11', 28800, '강아지 사료11', '강아지 먹거리', 'dog_food21');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료12', 76700, '강아지 사료12', '강아지 먹거리', 'dog_food23');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료13', 45200, '강아지 사료13', '강아지 먹거리', 'dog_food25');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료14', 89800, '강아지 사료14', '강아지 먹거리', 'dog_food27');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료15', 78200, '강아지 사료15', '강아지 먹거리', 'dog_food29');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료16', 69100, '강아지 사료16', '강아지 먹거리', 'dog_food31');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료17', 23200, '강아지 사료17', '강아지 먹거리', 'dog_food33');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료18', 25200, '강아지 사료18', '강아지 먹거리', 'dog_food35');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료19', 45500, '강아지 사료19', '강아지 먹거리', 'dog_food37');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료20', 49800, '강아지 사료20', '강아지 먹거리', 'dog_food39');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료21', 97400, '강아지 사료21', '강아지 먹거리', 'dog_food41');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 사료22', 95600, '강아지 사료22', '강아지 먹거리', 'dog_food43');

-- 강아지 먹거리
-- (강아지 간식)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식1', 5300, '강아지 간식1', '강아지 먹거리', 'dog_snack1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식2', 4600, '강아지 간식2', '강아지 먹거리', 'dog_snack3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식3', 3800, '강아지 간식3', '강아지 먹거리', 'dog_snack5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식4', 6200, '강아지 간식4', '강아지 먹거리', 'dog_snack7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식5', 5700, '강아지 간식5', '강아지 먹거리', 'dog_snack9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식6', 2300, '강아지 간식6', '강아지 먹거리', 'dog_snack11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식7', 7100, '강아지 간식7', '강아지 먹거리', 'dog_snack13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식8', 4100, '강아지 간식8', '강아지 먹거리', 'dog_snack15');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식9', 4800, '강아지 간식9', '강아지 먹거리', 'dog_snack17');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식10', 3100, '강아지 간식10', '강아지 먹거리', 'dog_snack19');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식11', 2900, '강아지 간식11', '강아지 먹거리', 'dog_snack21');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식12', 5400, '강아지 간식12', '강아지 먹거리', 'dog_snack23');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식13', 6100, '강아지 간식13', '강아지 먹거리', 'dog_snack25');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식14', 6400, '강아지 간식14', '강아지 먹거리', 'dog_snack27');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식15', 2400, '강아지 간식15', '강아지 먹거리', 'dog_snack29');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식16', 2200, '강아지 간식16', '강아지 먹거리', 'dog_snack31');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식17', 5200, '강아지 간식17', '강아지 먹거리', 'dog_snack33');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식18', 2300, '강아지 간식18', '강아지 먹거리', 'dog_snack35');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식19', 4800, '강아지 간식19', '강아지 먹거리', 'dog_snack37');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식20', 3300, '강아지 간식20', '강아지 먹거리', 'dog_snack39');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식21', 4200, '강아지 간식21', '강아지 먹거리', 'dog_snack41');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식22', 4400, '강아지 간식22', '강아지 먹거리', 'dog_snack43');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식23', 4600, '강아지 간식23', '강아지 먹거리', 'dog_snack45');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 간식24', 5500, '강아지 간식24', '강아지 먹거리', 'dog_snack47');

-- 강아지 먹거리
-- (강아지 영양제)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 영양제1', 11200, '강아지 영양제1', '강아지 먹거리', 'dog_health1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 영양제2', 26400, '강아지 영양제2', '강아지 먹거리', 'dog_health3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 영양제3', 9400, '강아지 영양제3', '강아지 먹거리', 'dog_health5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 영양제4', 14500, '강아지 영양제4', '강아지 먹거리', 'dog_health7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 영양제5', 8800, '강아지 영양제5', '강아지 먹거리', 'dog_health9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 영양제6', 15200, '강아지 영양제6', '강아지 먹거리', 'dog_health11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 영양제7', 12300, '강아지 영양제7', '강아지 먹거리', 'dog_health13');

-- 강아지 용품
-- (강아지 집)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 집1', 25900, '강아지 집1', '강아지 용품', 'dog_house1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 집2', 29400, '강아지 집2', '강아지 용품', 'dog_house3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 집3', 35600, '강아지 집3', '강아지 용품', 'dog_house5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 집4', 38500, '강아지 집4', '강아지 용품', 'dog_house7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 집5', 42800, '강아지 집5', '강아지 용품', 'dog_house9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 집6', 38800, '강아지 집6', '강아지 용품', 'dog_house11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 집7', 46700, '강아지 집7', '강아지 용품', 'dog_house13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 집8', 32800, '강아지 집8', '강아지 용품', 'dog_house15');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 집9', 45300, '강아지 집9', '강아지 용품', 'dog_house17');

-- 강아지 용품
-- (강아지 장난감)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 장난감1', 2300, '강아지 장난감1', '강아지 용품', 'dog_toy1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 장난감2', 1400, '강아지 장난감2', '강아지 용품', 'dog_toy3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 장난감3', 3600, '강아지 장난감3', '강아지 용품', 'dog_toy5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 장난감4', 2950, '강아지 장난감4', '강아지 용품', 'dog_toy7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 장난감5', 2800, '강아지 장난감5', '강아지 용품', 'dog_toy9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 장난감6', 1800, '강아지 장난감6', '강아지 용품', 'dog_toy11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 장난감7', 2200, '강아지 장난감7', '강아지 용품', 'dog_toy13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 장난감8', 1200, '강아지 장난감8', '강아지 용품', 'dog_toy15');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 장난감9', 1400, '강아지 장난감9', '강아지 용품', 'dog_toy17');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 장난감10', 1100, '강아지 장난감10', '강아지 용품', 'dog_toy19');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 장난감11', 3100, '강아지 장난감11', '강아지 용품', 'dog_toy21');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 장난감12', 1500, '강아지 장난감12', '강아지 용품', 'dog_toy23');

-- 강아지 용품
-- (강아지 밥그릇)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 밥그릇1', 48800, '강아지 밥그릇1', '강아지 용품', 'dog_bowl1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 밥그릇2', 13200, '강아지 밥그릇2', '강아지 용품', 'dog_bowl3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 밥그릇3', 33300, '강아지 밥그릇3', '강아지 용품', 'dog_bowl5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 밥그릇4', 42600, '강아지 밥그릇4', '강아지 용품', 'dog_bowl7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 밥그릇5', 11600, '강아지 밥그릇5', '강아지 용품', 'dog_bowl9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 밥그릇6', 62900, '강아지 밥그릇6', '강아지 용품', 'dog_bowl11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 밥그릇7', 35700, '강아지 밥그릇7', '강아지 용품', 'dog_bowl13');

-- 강아지 용품
-- (강아지 옷)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 옷1', 26200, '강아지 옷1', '강아지 용품', 'dog_clothes1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 옷2', 27600, '강아지 옷2', '강아지 용품', 'dog_clothes3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 옷3', 45000, '강아지 옷3', '강아지 용품', 'dog_clothes5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 옷4', 26000, '강아지 옷4', '강아지 용품', 'dog_clothes7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 옷5', 24800, '강아지 옷5', '강아지 용품', 'dog_clothes9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 옷6', 23000, '강아지 옷6', '강아지 용품', 'dog_clothes11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 옷7', 25000, '강아지 옷7', '강아지 용품', 'dog_clothes13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 옷8', 24000, '강아지 옷8', '강아지 용품', 'dog_clothes15');

-- 강아지 용품
-- (강아지 산책용품)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품1', 24000, '강아지 산책용품1', '강아지 용품', 'dog_use1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품2', 42200, '강아지 산책용품2', '강아지 용품', 'dog_use3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품3', 41600, '강아지 산책용품3', '강아지 용품', 'dog_use5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품4', 44000, '강아지 산책용품4', '강아지 용품', 'dog_use7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품5', 52400, '강아지 산책용품5', '강아지 용품', 'dog_use9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품6', 23200, '강아지 산책용품6', '강아지 용품', 'dog_use11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품7', 26400, '강아지 산책용품7', '강아지 용품', 'dog_use13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품8', 24500, '강아지 산책용품8', '강아지 용품', 'dog_use15');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품9', 52000, '강아지 산책용품9', '강아지 용품', 'dog_use17');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품10', 21200, '강아지 산책용품10', '강아지 용품', 'dog_use19');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품11', 178000, '강아지 산책용품11', '강아지 용품', 'dog_use21');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품12', 35800, '강아지 산책용품12', '강아지 용품', 'dog_use23');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품13', 36400, '강아지 산책용품13', '강아지 용품', 'dog_use25');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품14', 194000, '강아지 산책용품14', '강아지 용품', 'dog_use27');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품15', 18500, '강아지 산책용품15', '강아지 용품', 'dog_use29');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품16', 6700, '강아지 산책용품16', '강아지 용품', 'dog_use31');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품17', 7300, '강아지 산책용품17', '강아지 용품', 'dog_use33');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품18', 6300, '강아지 산책용품18', '강아지 용품', 'dog_use35');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품19', 15300, '강아지 산책용품19', '강아지 용품', 'dog_use37');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품20', 2000, '강아지 산책용품20', '강아지 용품', 'dog_use39');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품21', 7600, '강아지 산책용품21', '강아지 용품', 'dog_use41');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품22', 6600, '강아지 산책용품22', '강아지 용품', 'dog_use43');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품23', 3600, '강아지 산책용품23', '강아지 용품', 'dog_use45');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품24', 2700, '강아지 산책용품24', '강아지 용품', 'dog_use47');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품25', 9800, '강아지 산책용품25', '강아지 용품', 'dog_use49');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '강아지 산책용품26', 10400, '강아지 산책용품26', '강아지 용품', 'dog_use51');


-- 고양이 먹거리
-- (고양이 사료)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료1', 75800, '고양이 사료1', '고양이 먹거리', 'cat_food1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료2', 21300, '고양이 사료2', '고양이 먹거리', 'cat_food3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료3', 18600, '고양이 사료3', '고양이 먹거리', 'cat_food5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료4', 36900, '고양이 사료4', '고양이 먹거리', 'cat_food7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료5', 23200, '고양이 사료5', '고양이 먹거리', 'cat_food9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료6', 35800, '고양이 사료6', '고양이 먹거리', 'cat_food11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료7', 42800, '고양이 사료7', '고양이 먹거리', 'cat_food13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료8', 37800, '고양이 사료8', '고양이 먹거리', 'cat_food15');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료9', 3900, '고양이 사료9', '고양이 먹거리', 'cat_food17');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료10', 4500, '고양이 사료10', '고양이 먹거리', 'cat_food19');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료11', 45800, '고양이 사료11', '고양이 먹거리', 'cat_food21');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료12', 23200, '고양이 사료12', '고양이 먹거리', 'cat_food23');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료13', 29800, '고양이 사료13', '고양이 먹거리', 'cat_food25');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료14', 5200, '고양이 사료14', '고양이 먹거리', 'cat_food27');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료15', 4300, '고양이 사료15', '고양이 먹거리', 'cat_food29');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료16', 3400, '고양이 사료16', '고양이 먹거리', 'cat_food31');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료17', 18800, '고양이 사료17', '고양이 먹거리', 'cat_food33');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료18', 20800, '고양이 사료18', '고양이 먹거리', 'cat_food35');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료19', 12000, '고양이 사료19', '고양이 먹거리', 'cat_food37');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료20', 34300, '고양이 사료20', '고양이 먹거리', 'cat_food39');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료21', 41900, '고양이 사료21', '고양이 먹거리', 'cat_food41');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료22', 43900, '고양이 사료22', '고양이 먹거리', 'cat_food43');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료23', 35500, '고양이 사료23', '고양이 먹거리', 'cat_food45');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료24', 24600, '고양이 사료24', '고양이 먹거리', 'cat_food47');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료25', 32200, '고양이 사료25', '고양이 먹거리', 'cat_food49');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료26', 28800, '고양이 사료26', '고양이 먹거리', 'cat_food51');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료27', 23100, '고양이 사료27', '고양이 먹거리', 'cat_food53');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료28', 26400, '고양이 사료28', '고양이 먹거리', 'cat_food55');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료29', 9500, '고양이 사료29', '고양이 먹거리', 'cat_food57');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 사료30', 32600, '고양이 사료30', '고양이 먹거리', 'cat_food59');

-- 고양이 먹거리
-- (고양이 간식)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식1', 3800, '고양이 간식1', '고양이 먹거리', 'cat_snack1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식2', 1300, '고양이 간식2', '고양이 먹거리', 'cat_snack3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식3', 2500, '고양이 간식3', '고양이 먹거리', 'cat_snack5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식4', 2300, '고양이 간식4', '고양이 먹거리', 'cat_snack7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식5', 3600, '고양이 간식5', '고양이 먹거리', 'cat_snack9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식6', 5800, '고양이 간식6', '고양이 먹거리', 'cat_snack11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식7', 1500, '고양이 간식7', '고양이 먹거리', 'cat_snack13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식8', 2400, '고양이 간식8', '고양이 먹거리', 'cat_snack15');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식9', 8800, '고양이 간식9', '고양이 먹거리', 'cat_snack17');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식10', 2200, '고양이 간식10', '고양이 먹거리', 'cat_snack19');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식11', 2200, '고양이 간식11', '고양이 먹거리', 'cat_snack21');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식12', 3500, '고양이 간식12', '고양이 먹거리', 'cat_snack23');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식13', 2700, '고양이 간식13', '고양이 먹거리', 'cat_snack25');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식14', 3900, '고양이 간식14', '고양이 먹거리', 'cat_snack27');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식15', 3900, '고양이 간식15', '고양이 먹거리', 'cat_snack29');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식16', 2500, '고양이 간식16', '고양이 먹거리', 'cat_snack31');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식17', 2200, '고양이 간식17', '고양이 먹거리', 'cat_snack33');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식18', 4800, '고양이 간식18', '고양이 먹거리', 'cat_snack35');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식19', 2100, '고양이 간식19', '고양이 먹거리', 'cat_snack37');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식20', 3200, '고양이 간식20', '고양이 먹거리', 'cat_snack39');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식21', 3500, '고양이 간식21', '고양이 먹거리', 'cat_snack41');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식22', 2400, '고양이 간식22', '고양이 먹거리', 'cat_snack43');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식23', 2900, '고양이 간식23', '고양이 먹거리', 'cat_snack45');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식24', 45300, '고양이 간식24', '고양이 먹거리', 'cat_snack47');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식25', 2400, '고양이 간식25', '고양이 먹거리', 'cat_snack49');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식26', 2700, '고양이 간식26', '고양이 먹거리', 'cat_snack51');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식27', 1600, '고양이 간식27', '고양이 먹거리', 'cat_snack53');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식28', 6400, '고양이 간식28', '고양이 먹거리', 'cat_snack55');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식29', 12800, '고양이 간식29', '고양이 먹거리', 'cat_snack57');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 간식30', 2100, '고양이 간식30', '고양이 먹거리', 'cat_snack59');

-- 고양이 먹거리
-- (고양이 영양제)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 영양제1', 8600, '고양이 영양제1', '고양이 먹거리', 'cat_health1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 영양제2', 9500, '고양이 영양제2', '고양이 먹거리', 'cat_health3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 영양제3', 4500, '고양이 영양제3', '고양이 먹거리', 'cat_health5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 영양제4', 7200, '고양이 영양제4', '고양이 먹거리', 'cat_health7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 영양제5', 4200, '고양이 영양제5', '고양이 먹거리', 'cat_health9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 영양제6', 7800, '고양이 영양제6', '고양이 먹거리', 'cat_health11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 영양제7', 8800, '고양이 영양제7', '고양이 먹거리', 'cat_health13');

-- 고양이 용품
-- (고양이 집)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 집1', 111000, '고양이 집1', '고양이 용품', 'cat_house1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 집2', 39000, '고양이 집2', '고양이 용품', 'cat_house3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 집3', 264000, '고양이 집3', '고양이 용품', 'cat_house5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 집4', 43000, '고양이 집4', '고양이 용품', 'cat_house7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 집5', 68000, '고양이 집5', '고양이 용품', 'cat_house9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 집6', 54000, '고양이 집6', '고양이 용품', 'cat_house11');

-- 고양이 용품
-- (고양이 장난감)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 장난감1', 25900, '고양이 장난감1', '고양이 용품', 'cat_toy1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 장난감2', 4600, '고양이 장난감2', '고양이 용품', 'cat_toy3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 장난감3', 3700, '고양이 장난감3', '고양이 용품', 'cat_toy5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 장난감4', 2700, '고양이 장난감4', '고양이 용품', 'cat_toy7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 장난감5', 2300, '고양이 장난감5', '고양이 용품', 'cat_toy9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 장난감6', 3500, '고양이 장난감6', '고양이 용품', 'cat_toy11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 장난감7', 1900, '고양이 장난감7', '고양이 용품', 'cat_toy13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 장난감8', 4700, '고양이 장난감8', '고양이 용품', 'cat_toy15');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 장난감9', 4200, '고양이 장난감9', '고양이 용품', 'cat_toy17');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 장난감10', 3300, '고양이 장난감10', '고양이 용품', 'cat_toy19');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 장난감11', 2800, '고양이 장난감11', '고양이 용품', 'cat_toy21');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 장난감12', 4500, '고양이 장난감12', '고양이 용품', 'cat_toy23');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 장난감13', 3800, '고양이 장난감13', '고양이 용품', 'cat_toy25');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 장난감14', 3400, '고양이 장난감14', '고양이 용품', 'cat_toy27');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 장난감15', 2400, '고양이 장난감15', '고양이 용품', 'cat_toy29');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 장난감16', 5700, '고양이 장난감16', '고양이 용품', 'cat_toy31');

-- 고양이 용품
-- (고양이 밥그릇)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 밥그릇1', 15800, '고양이 밥그릇1', '고양이 용품', 'cat_bowl1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 밥그릇2', 41000, '고양이 밥그릇2', '고양이 용품', 'cat_bowl3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 밥그릇3', 28000, '고양이 밥그릇3', '고양이 용품', 'cat_bowl5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 밥그릇4', 34000, '고양이 밥그릇4', '고양이 용품', 'cat_bowl7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 밥그릇5', 40000, '고양이 밥그릇5', '고양이 용품', 'cat_bowl9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 밥그릇6', 22800, '고양이 밥그릇6', '고양이 용품', 'cat_bowl11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 밥그릇7', 22000, '고양이 밥그릇7', '고양이 용품', 'cat_bowl13');

-- 고양이 용품
-- (고양이 옷)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 옷1', 14500, '고양이 옷1', '고양이 용품', 'cat_clothes1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 옷2', 14500, '고양이 옷2', '고양이 용품', 'cat_clothes3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 옷3', 14500, '고양이 옷3', '고양이 용품', 'cat_clothes5');

-- 고양이 용품
-- (고양이 방콕용품)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품1', 42000, '고양이 방콕용품1', '고양이 용품', 'cat_use1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품2', 40000, '고양이 방콕용품2', '고양이 용품', 'cat_use3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품3', 33500, '고양이 방콕용품3', '고양이 용품', 'cat_use5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품4', 28000, '고양이 방콕용품4', '고양이 용품', 'cat_use7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품5', 91000, '고양이 방콕용품5', '고양이 용품', 'cat_use9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품6', 59000, '고양이 방콕용품6', '고양이 용품', 'cat_use11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품7', 113000, '고양이 방콕용품7', '고양이 용품', 'cat_use13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품8', 125000, '고양이 방콕용품8', '고양이 용품', 'cat_use15');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품9', 96000, '고양이 방콕용품9', '고양이 용품', 'cat_use17');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품10', 78000, '고양이 방콕용품10', '고양이 용품', 'cat_use19');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품11', 89000, '고양이 방콕용품11', '고양이 용품', 'cat_use21');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품12', 132000, '고양이 방콕용품12', '고양이 용품', 'cat_use23');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품13', 23000, '고양이 방콕용품13', '고양이 용품', 'cat_use25');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품14', 30000, '고양이 방콕용품14', '고양이 용품', 'cat_use27');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품15', 34000, '고양이 방콕용품15', '고양이 용품', 'cat_use29');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품16', 37000, '고양이 방콕용품16', '고양이 용품', 'cat_use31');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품17', 29000, '고양이 방콕용품17', '고양이 용품', 'cat_use33');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품18', 24000, '고양이 방콕용품18', '고양이 용품', 'cat_use35');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품19', 28000, '고양이 방콕용품19', '고양이 용품', 'cat_use37');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품20', 26000, '고양이 방콕용품20', '고양이 용품', 'cat_use39');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품21', 113000, '고양이 방콕용품21', '고양이 용품', 'cat_use41');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품22', 46000, '고양이 방콕용품22', '고양이 용품', 'cat_use43');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품23', 35000, '고양이 방콕용품23', '고양이 용품', 'cat_use45');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '고양이 방콕용품24', 42000, '고양이 방콕용품24', '고양이 용품', 'cat_use47');

-- 햄스터 먹거리
-- (햄스터 사료)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료1', 11500, '햄스터 사료1', '햄스터 먹거리', 'ham_food1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료2', 10200, '햄스터 사료2', '햄스터 먹거리', 'ham_food3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료3', 10700, '햄스터 사료3', '햄스터 먹거리', 'ham_food5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료4', 7500, '햄스터 사료4', '햄스터 먹거리', 'ham_food7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료5', 5200, '햄스터 사료5', '햄스터 먹거리', 'ham_food9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료6', 4600, '햄스터 사료6', '햄스터 먹거리', 'ham_food11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료7', 4200, '햄스터 사료7', '햄스터 먹거리', 'ham_food13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료8', 5600, '햄스터 사료8', '햄스터 먹거리', 'ham_food15');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료9', 5200, '햄스터 사료9', '햄스터 먹거리', 'ham_food17');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료10', 7800, '햄스터 사료10', '햄스터 먹거리', 'ham_food19');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료11', 11200, '햄스터 사료11', '햄스터 먹거리', 'ham_food21');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료12', 7300, '햄스터 사료12', '햄스터 먹거리', 'ham_food23');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료13', 5600, '햄스터 사료13', '햄스터 먹거리', 'ham_food25');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료14', 8200, '햄스터 사료14', '햄스터 먹거리', 'ham_food27');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료15', 4500, '햄스터 사료15', '햄스터 먹거리', 'ham_food29');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료16', 5200, '햄스터 사료16', '햄스터 먹거리', 'ham_food31');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료17', 8400, '햄스터 사료17', '햄스터 먹거리', 'ham_food33');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료18', 6100, '햄스터 사료18', '햄스터 먹거리', 'ham_food35');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료19', 5300, '햄스터 사료19', '햄스터 먹거리', 'ham_food37');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료20', 4100, '햄스터 사료20', '햄스터 먹거리', 'ham_food39');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료21', 6200, '햄스터 사료21', '햄스터 먹거리', 'ham_food41');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 사료22', 8800, '햄스터 사료22', '햄스터 먹거리', 'ham_food43');

-- 햄스터 먹거리
-- (햄스터 간식)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 간식1', 5800, '햄스터 간식1', '햄스터 먹거리', 'ham_snack1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 간식2', 6400, '햄스터 간식2', '햄스터 먹거리', 'ham_snack3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 간식3', 4600, '햄스터 간식3', '햄스터 먹거리', 'ham_snack5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 간식4', 5200, '햄스터 간식4', '햄스터 먹거리', 'ham_snack7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 간식5', 4800, '햄스터 간식5', '햄스터 먹거리', 'ham_snack9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 간식6', 3200, '햄스터 간식6', '햄스터 먹거리', 'ham_snack11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 간식7', 3500, '햄스터 간식7', '햄스터 먹거리', 'ham_snack13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 간식8', 2700, '햄스터 간식8', '햄스터 먹거리', 'ham_snack15');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 간식9', 3600, '햄스터 간식9', '햄스터 먹거리', 'ham_snack17');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 간식10', 4800, '햄스터 간식10', '햄스터 먹거리', 'ham_snack19');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 간식11', 4400, '햄스터 간식11', '햄스터 먹거리', 'ham_snack21');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 간식12', 5100, '햄스터 간식12', '햄스터 먹거리', 'ham_snack23');

-- 햄스터 먹거리
-- (햄스터 간식)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 영양제1', 1200, '햄스터 영양제1', '햄스터 먹거리', 'ham_health1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 영양제2', 1700, '햄스터 영양제2', '햄스터 먹거리', 'ham_health3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 영양제3', 2800, '햄스터 영양제3', '햄스터 먹거리', 'ham_health5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 영양제4', 1900, '햄스터 영양제4', '햄스터 먹거리', 'ham_health7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 영양제5', 1300, '햄스터 영양제5', '햄스터 먹거리', 'ham_health9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 영양제6', 1500, '햄스터 영양제6', '햄스터 먹거리', 'ham_health11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 영양제7', 1200, '햄스터 영양제7', '햄스터 먹거리', 'ham_health13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 영양제8', 2300, '햄스터 영양제8', '햄스터 먹거리', 'ham_health15');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 영양제9', 2200, '햄스터 영양제9', '햄스터 먹거리', 'ham_health17');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 영양제10', 1600, '햄스터 영양제10', '햄스터 먹거리', 'ham_health19');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 영양제11', 1200, '햄스터 영양제11', '햄스터 먹거리', 'ham_health21');

-- 햄스터 용품
-- (햄스터 집)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 집1', 25000, '햄스터 집1', '햄스터 용품', 'ham_home1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 집2', 12000, '햄스터 집2', '햄스터 용품', 'ham_home3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 집3', 9900, '햄스터 집3', '햄스터 용품', 'ham_home5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 집4', 20000, '햄스터 집4', '햄스터 용품', 'ham_home7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 집5', 14000, '햄스터 집5', '햄스터 용품', 'ham_home9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 집6', 8000, '햄스터 집6', '햄스터 용품', 'ham_home11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 집7', 10300, '햄스터 집7', '햄스터 용품', 'ham_home13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 집8', 8900, '햄스터 집8', '햄스터 용품', 'ham_home15');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 집9', 10600, '햄스터 집9', '햄스터 용품', 'ham_home17');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 집10', 9100, '햄스터 집10', '햄스터 용품', 'ham_home19');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 집11', 15000, '햄스터 집11', '햄스터 용품', 'ham_home21');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 집12', 7800, '햄스터 집12', '햄스터 용품', 'ham_home23');

-- 햄스터 용품
-- (햄스터 장난감)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 장난감1', 20000, '햄스터 장난감1', '햄스터 용품', 'ham_toy1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 장난감2', 5600, '햄스터 장난감2', '햄스터 용품', 'ham_toy3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 장난감3', 8900, '햄스터 장난감3', '햄스터 용품', 'ham_toy5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 장난감4', 13500, '햄스터 장난감4', '햄스터 용품', 'ham_toy7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 장난감5', 28000, '햄스터 장난감5', '햄스터 용품', 'ham_toy9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 장난감6', 18000, '햄스터 장난감6', '햄스터 용품', 'ham_toy11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 장난감7', 24000, '햄스터 장난감7', '햄스터 용품', 'ham_toy13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 장난감8', 5200, '햄스터 장난감8', '햄스터 용품', 'ham_toy15');

-- 햄스터 용품
-- (햄스터 밥그릇)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 밥그릇1', 5500, '햄스터 밥그릇1', '햄스터 용품', 'ham_bowl1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 밥그릇2', 7400, '햄스터 밥그릇2', '햄스터 용품', 'ham_bowl3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 밥그릇3', 8800, '햄스터 밥그릇3', '햄스터 용품', 'ham_bowl5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 밥그릇4', 6300, '햄스터 밥그릇4', '햄스터 용품', 'ham_bowl7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 밥그릇5', 6500, '햄스터 밥그릇5', '햄스터 용품', 'ham_bowl9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 밥그릇6', 10500, '햄스터 밥그릇6', '햄스터 용품', 'ham_bowl11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 밥그릇7', 8900, '햄스터 밥그릇7', '햄스터 용품', 'ham_bowl13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 밥그릇8', 12000, '햄스터 밥그릇8', '햄스터 용품', 'ham_bowl15');

-- 햄스터 용품
-- (햄스터 챗바퀴)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 챗바퀴1', 30000, '햄스터 챗바퀴1', '햄스터 용품', 'ham_wheel1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 챗바퀴2', 66000, '햄스터 챗바퀴2', '햄스터 용품', 'ham_wheel3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 챗바퀴3', 43000, '햄스터 챗바퀴3', '햄스터 용품', 'ham_wheel5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 챗바퀴4', 38000, '햄스터 챗바퀴4', '햄스터 용품', 'ham_wheel7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 챗바퀴5', 42000, '햄스터 챗바퀴5', '햄스터 용품', 'ham_wheel9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 챗바퀴6', 46000, '햄스터 챗바퀴6', '햄스터 용품', 'ham_wheel11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 챗바퀴7', 55000, '햄스터 챗바퀴7', '햄스터 용품', 'ham_wheel13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 챗바퀴8', 28000, '햄스터 챗바퀴8', '햄스터 용품', 'ham_wheel15');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 챗바퀴9', 35000, '햄스터 챗바퀴9', '햄스터 용품', 'ham_wheel17');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 챗바퀴10', 36000, '햄스터 챗바퀴10', '햄스터 용품', 'ham_wheel19');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 챗바퀴11', 17000, '햄스터 챗바퀴11', '햄스터 용품', 'ham_wheel21');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 챗바퀴12', 21000, '햄스터 챗바퀴12', '햄스터 용품', 'ham_wheel23');

-- 햄스터 용품
-- (햄스터 이갈이)
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 이갈이1', 2500, '햄스터 이갈이1', '햄스터 용품', 'ham_tooth1');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 이갈이2', 3200, '햄스터 이갈이2', '햄스터 용품', 'ham_tooth3');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 이갈이3', 2800, '햄스터 이갈이3', '햄스터 용품', 'ham_tooth5');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 이갈이4', 4200, '햄스터 이갈이4', '햄스터 용품', 'ham_tooth7');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 이갈이5', 1800, '햄스터 이갈이5', '햄스터 용품', 'ham_tooth9');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 이갈이6', 2300, '햄스터 이갈이6', '햄스터 용품', 'ham_tooth11');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 이갈이7', 3600, '햄스터 이갈이7', '햄스터 용품', 'ham_tooth13');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 이갈이8', 2200, '햄스터 이갈이8', '햄스터 용품', 'ham_tooth15');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 이갈이9', 1600, '햄스터 이갈이9', '햄스터 용품', 'ham_tooth17');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 이갈이10', 1200, '햄스터 이갈이10', '햄스터 용품', 'ham_tooth19');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 이갈이11', 2100, '햄스터 이갈이11', '햄스터 용품', 'ham_tooth21');
INSERT INTO product(pno, pname, price, pcontent, category, pfilename)
VALUES(seq_pno.nextVAL, '햄스터 이갈이12', 1500, '햄스터 이갈이12', '햄스터 용품', 'ham_tooth23');

SELECT * FROM product;

DROP TABLE product;
DROP SEQUENCE seq_pno;

