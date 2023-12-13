CREATE TABLE member (
   id               VARCHAR2(20)  PRIMARY KEY,
   passwd           VARCHAR2(25)   NOT NULL,
   name             VARCHAR2(30),
   email            VARCHAR2(30),
   phone            VARCHAR2(20)  NOT NULL,
   joindate         TIMESTAMP     DEFAULT SYSTIMESTAMP,
   zip_code         VARCHAR2(10),
   address          VARCHAR2(40),
   detailaddress    VARCHAR2(40)
);

INSERT INTO member (id, passwd, name, email, phone, zip_code, address, detailaddress)
VALUES ('khit', 'm1234567', '윤석민', 'dbstjrals130@naver.com', '010-8398-1739', '5412', '서울시 강서구', '래미안아파트');

SELECT * FROM member;

COMMIT;

CREATE TABLE product (
   pno          NUMBER          PRIMARY KEY,
   pname        VARCHAR2(40)    NOT NULL,
   price        NUMBER          NOT NULL,
   p_score      NUMBER,
   sal_num      NUMBER,
   pcontent     VARCHAR2(200)
);



CREATE TABLE orders (
   orderno          NUMBER          PRIMARY KEY,
   orderdate        TIMESTAMP       DEFAULT SYSTIMESTAMP,
   orderprice       NUMBER,          
   totalprice       NUMBER,         
   cardcompany      VARCHAR2(30),   
   count            NUMBER,         
   orderstatus      VARCHAR2(60),    
   pno              NUMBER          NOT NULL,
   id               VARCHAR2(20)    NOT NULL,
   FOREIGN KEY(id)  REFERENCES member,
   FOREIGN KEY(pno) REFERENCES product
);


CREATE TABLE delivery (
   dno              NUMBER            PRIMARY KEY,
   name             VARCHAR2(30)      NOT NULL,
   zip_code         VARCHAR2(40),
   address          VARCHAR2(40)      NOT NULL,
   detailaddress    VARCHAR2(40)      NOT NULL,
   request          VARCHAR2(200),
   orderno          NUMBER            NOT NULL,
   FOREIGN KEY(orderno) REFERENCES orders
);

SELECT * FROM delivery;
SELECT * FROM member;
SELECT * FROM product;
SELECT * FROM orders;

SELECT * FROM member;