CREATE database oct;
CREATE TABLE Monitor(id int,brand varchar(20),price int,quality boolean,resolution varchar(20),
                quantity int);
                DESC Monitor;
ALTER TABLE Monitor ADD color varchar(10);
ALTER TABLE Monitor ADD type varchar(20);

SELECT * from Monitor;

CREATE TABLE Watch(Id int,Name varchar(20),Price int,Quality boolean,Type varchar(20),
                Quantity int);
ALTER TABLE Watch ADD  Shape varchar(10);
ALTER TABLE Watch ADD Color varchar(10);

                DESC Watch;
SELECT * from Watch;

CREATE TABLE Traniee(Id int,USN varchar(20),Grade varchar(5),Email varchar(20),Address varchar(20),
                 city varchar(10));
                DESC Customer;
ALTER TABLE Traniee ADD Name varchar(10);
ALTER TABLE Traniee ADD Age int;

                SELECT * from Customer;

CREATE TABLE Company(Id int,Salary int,Experience boolean,Requirement varchar(20),Eligibilty varchar(10),
                Role varchar(10));
                DESC Company;
ALTER TABLE Company ADD Name varchar(20);
ALTER TABLE Company ADD Type varchar(10);

SELECT * from Company;

CREATE TABLE Salon(Id int,Name varchar(20),Quality boolean,Owner varchar(20),Location varchar(10),
                quantity int);
                DESC Salon;
ALTER TABLE Salon ADD Type varchar(10);
ALTER TABLE Salon ADD  Price int;

SELECT * from Salon;
INSERT INTO Monitor VALUES(1,'HP',40000,true,'HD',2,'White','Full');
INSERT INTO Monitor VALUES(2,'Dell',35000,true,'Normal',3,'Black','Half');
INSERT INTO Monitor VALUES(3,'Toshiba',25000,false,'HD',8,'Green','Full');
INSERT INTO Monitor VALUES(4,'Lenovo',30000,true,'Alter-HD',1,'White','Middle');
INSERT INTO Monitor VALUES(5,'Thinkpad',10000,false,'HD',5,'Black','Full');
INSERT INTO Monitor VALUES(6,'MAC',140000,true,'HD',2,'White','Full');
INSERT INTO Monitor VALUES(7,'Apple',12000,true,'HD',7,'Grey','Middle');
INSERT INTO Monitor VALUES(8,'Dell',70000,false,'HD',3,'White','Half');
INSERT INTO Monitor VALUES(9,'HP',50000,true,'Normal',4,'Black','Full');
INSERT INTO Monitor VALUES(10,'Toshiba',30000,true,'HD',2,'White','Full');

DESC Watch;
INSERT INTO Watch VALUES(1,'Boat',4000,true,'Smart',2,'Rounded','White');
INSERT INTO Watch VALUES(2,'Noise',3500,true,'Normal',3,'Square','Blue');
INSERT INTO Watch VALUES(3,'Rolex',5000,false,'HD',8,'Rounded','Black');
INSERT INTO Watch VALUES(4,'Tag',3000,true,'Smart',1,'Rectangle','Green');
INSERT INTO Watch VALUES(5,'Noise',1000,false,'HD',5,'Circle','White');
INSERT INTO Watch VALUES(6,'MAC',14000,true,'Normal',2,'Square','Grey');
INSERT INTO Watch VALUES(7,'Apple',1200,true,'HD',7,'Rounded','Orange');
INSERT INTO Watch VALUES(8,'Noise',7000,false,'Smart',3,'Circle','black');
INSERT INTO Watch VALUES(9,'Boat',5000,true,'Normal',4,'Sqaure','Grey');
INSERT INTO Watch VALUES(10,'Rolex',3000,true,'HD',2,'Cube','White');

DESC Traniee;
INSERT INTO Traniee VALUES(1,'H11','A','Abc@gmail.com','Btm layout','bng','ABC',23);
INSERT INTO Traniee VALUES(2,'H12','B','Pqr@gmail.com','JPnagar','Bng','PQR',24);
INSERT INTO Traniee VALUES(3,'H13','A','Str@gmail.com','Jaynagar','bng','STR',25);
INSERT INTO Traniee VALUES(4,'H14','A','Def@gmail.com','Holekere road','cta','DEF',23);
INSERT INTO Traniee VALUES(5,'H15','B','Ghi@gmail.com','VP extension','cta','GHI',23);
INSERT INTO Traniee VALUES(6,'H16','A','Cam@gmail.com','JCR extension','cta','CAM',24);
INSERT INTO Traniee VALUES(7,'H17','B','Xyz@gmail.com','HSR layout','bng','XYZ',25);
INSERT INTO Traniee VALUES(8,'H18','A','Hij@gmail.com','Silk board','bng','HIJ',26);
INSERT INTO Traniee VALUES(9,'H19','B','Klm@gmail.com','Bada cross','dvg','KLM',25);
INSERT INTO Traniee VALUES(10,'H20','B','Uvw@gmail.com','Maratahalli','bng','UVW',24);


DESC Company;
INSERT INTO Company VALUES(1,40000,true,'Above 80%','Graduate','Manager','Wipro','Full-time');
INSERT INTO Company VALUES(2,35000,False,'Above 50%','Pu pass','Traniee','Blue light','part-time');
INSERT INTO Company VALUES(3,25000,false,'Above 80%','Graduate','Intern','HP','Full-time');
INSERT INTO Company VALUES(4,30000,true,'Above 70%','Gradute','Manager','COdeking','Part-time');
INSERT INTO Company VALUES(5,10000,false,'Above 60%','10th pass','Worker','Hotel','Full-time');
INSERT INTO Company VALUES(6,140000,true,'Above 80%','Graduate','Traniee','Bank','WFH');
INSERT INTO Company VALUES(7,12000,true,'Above 60%','Pu pass','Intern','Google','WFH');
INSERT INTO Company VALUES(8,70000,false,'Above 80%','Graduate','Manager','Whitefield','full-time');
INSERT INTO Company VALUES(9,50000,true,'Above 50%','PU pass','Traniee','U&U','part-time');
INSERT INTO Company VALUES(10,30000,true,'Above 80%','Graduate','Manager','Whitefield','Full-time');

DESC Salon;
ALTER TABLE Salon RENAME  COLUMN Owner TO OwnerName;
ALTER TABLE Salon RENAME  COLUMN Location TO Area;
ALTER TABLE Salon RENAME  COLUMN Price TO Cost;

ALTER TABLE Salon MODIFY COLUMN Quality int;
ALTER TABLE Salon MODIFY COLUMN Area Varchar(50);
ALTER TABLE Salon MODIFY COLUMN Name varchar(50);


DESC Salon;
INSERT INTO Salon VALUES(1,'Alpha',4,'HDD','dvg',5,'Female',2300);
INSERT INTO Salon VALUES(2,'Dello',35,'John','cta',3,'Men',4500);
INSERT INTO Salon VALUES(3,'Toshibaa',2,'James','bng',8,'Female',1000);
INSERT INTO Salon VALUES(4,'Lenos',3,'Puk yu','bng',1,'Men',700);
INSERT INTO salon VALUES(5,'zyzyz',8,'philips','bng',5,'Unisex',1500);
INSERT INTO Salon VALUES(6,'MACA',14,'Rolut','dvg',2,'Female',2000);
INSERT INTO Salon VALUES(7,'Apple',12,'Carry','cta',7,'Mens',500);
INSERT INTO Salon VALUES(8,'Dello',7,'Minati','cta',3,'Female',900);
INSERT INTO Salon VALUES(9,'HPP',5,'john','bng',4,'unisex',1200);
INSERT INTO Salon VALUES(10,'shiba',3,'Ajey','cta',2,'Female',850);

SELECT * FROM Salon;

update Salon SET Name='Alpha' WHERE id=9;
update Salon SET Name='M&M',quantity=6,type='Male' WHERE id=1;
update Salon SET Area='bng' WHERE id=10;
update Salon SET Name='Ultra',cost=2000,OwnerName='Nager',quantity=7 WHERE id=4;
update Salon SET Cost=900,Name='Mufee' WHERE id=10;

DELETE FROM Salon WHERE id=1;