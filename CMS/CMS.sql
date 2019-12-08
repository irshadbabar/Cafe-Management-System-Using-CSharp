 CREATE TABLE customer (
  customerid int IDENTITY ,
  username varchar(50) NOT NULL,
  email varchar(30) NOT NULL, 
  phone varchar(12),
  cust_role varchar(30) NOT NULL,
  cust_address varchar(50) NOT NULL,
  PRIMARY KEY (customerid)
);
-- SET IDENTITY_INSERT to ON.  
SET IDENTITY_INSERT dbo.customer ON;
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(42520, 'JuliaCasias','john@gmail.com', '9176841143','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(42521, 'RalphHeight','john@gmail.com', '9176841142','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(42522, 'JohnKemp','john@gmail.com', '9176841144','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(42523, 'DannyAnkney','john@gmail.com', '9176841145','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(42524, 'CharlesPainter','john@gmail.com', '9176841147','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(42525, 'JohnTurner','john@gmail.com', '9176841146','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(42526, 'NormaCole','john@gmail.com', '9176841150','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(42527, 'DawneWillett','john@gmail.com', '9176841148','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(42528, 'SamuelAbernathy','john@gmail.com', '9176841149','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(42529, 'EricMiskell','john@gmail.com', '9176841151','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(49511, 'RudolfCampbell','john@gmail.com', '9176841128','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(49519, 'LillieClayton','john@gmail.com', '9176841129','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(49810, 'DuaneReyes','john@gmail.com', '9176841125','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(49811, 'JuanTyler','john@gmail.com', '9176841127','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(49812, 'GlennChrist','john@gmail.com', '9176841126','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(49813, 'MarcusPepe','john@gmail.com', '9176841124','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52010, 'MarciaWillis','john@gmail.com', '9176841195','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52011, 'PaulaRidenour','john@gmail.com', '9176841196','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52012, 'BaileyEubanks','john@gmail.com', '9176841197','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52013, 'DebbieBrown','john@gmail.com', '9176841198','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52014, 'VernonMuller','john@gmail.com', '9176841199','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52015, 'ShannonStewart','john@gmail.com', '9176841100','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52016, 'ReginaCayer','john@gmail.com', '9176841101','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52017, 'JamesTesterman','john@gmail.com', '9176841102','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52018, 'HelenMosier','john@gmail.com', '9176841103','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52019, 'DarinMayes','john@gmail.com', '9176841104','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52024, 'MicheleAkins','john@gmail.com', '9176841105','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52025, 'VivianReimer','john@gmail.com', '9176841106','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52026, 'LindaJackson','john@gmail.com', '9176841107','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52027, 'ArleneWoolford','john@gmail.com', '9176841108','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52028, 'HoseaRoberts','john@gmail.com', '9176841109','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52029, 'GloriaBeckett','john@gmail.com', '9176841110','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52521, 'ColleenEngland','john@gmail.com', '9176841160','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52522, 'BruceMedina','john@gmail.com', '9176841155','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52523, 'CarolLarsen','john@gmail.com', '9176841154','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52524, 'BessieIson','john@gmail.com', '9176841153','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52525, 'PamelaBuchanan','john@gmail.com', '9176841152','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52526, 'LouieByers','john@gmail.com', '9176841156','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52527, 'RichardAgustin','john@gmail.com', '9176841157','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52528, 'MartinArndt','john@gmail.com', '9176841158','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(52529, 'CaseyMartin','john@gmail.com', '9176841159','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(59810, 'MonaMorris','john@gmail.com', '9176841122','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(59813, 'KatherineButts','john@gmail.com', '9176841123','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(69510, 'CliftonSilva','john@gmail.com', '9176841131','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(69511, 'EstherBrown','john@gmail.com', '9176841130','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(69512, 'MarkTakahashi','john@gmail.com', '9176841134','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(69513, 'JesusHuber','john@gmail.com', '9176841133','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(69515, 'ConradKnox','john@gmail.com', '9176841132','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(70012, 'DanaMonarrez','john@gmail.com', '9176841162','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(70013, 'DollyJaramillo','john@gmail.com', '9176841165','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(70014, 'PatLeal','john@gmail.com', '9176841164','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(70015, 'JessicaEscobedo','john@gmail.com', '9176841167','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(70016, 'AltaNelson','john@gmail.com', '9176841166','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(70018, 'YvonneShaw','john@gmail.com', '9176841163','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(70019, 'KariLemon','john@gmail.com', '9176841161','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(72010, 'MattieHalsey','john@gmail.com', '9176841185','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(72011, 'CarolJackson','john@gmail.com', '9176841187','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(72012, 'HerbertHerrman','john@gmail.com', '9176841188','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(72013, 'HarryGoss','john@gmail.com', '9176841189','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(72014, 'KimberlyVerret','john@gmail.com', '9176841190','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(72015, 'JeffAshley','john@gmail.com', '9176841191','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(72016, 'FrancisJimerson','john@gmail.com', '9176841192','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(72018, 'DorothyMauch','john@gmail.com', '9176841193','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(72019, 'MarcusWittmer','john@gmail.com', '9176841194','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(79810, 'GaryLeeper','john@gmail.com', '9176841116','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(79812, 'KennethWelch','john@gmail.com', '9176841117','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(79813, 'LouanneNorton','john@gmail.com', '9176841118','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(79814, 'RichardSmith','john@gmail.com', '9176841119','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(79815, 'RitaMontgomery','john@gmail.com', '9176841120','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(79817, 'EvelynSisk','john@gmail.com', '9176841121','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(82510, 'RichardSchroeder','john@gmail.com', '9176841121','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(82511, 'FredMiura','john@gmail.com', '9176841122','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(82512, 'DavidPhillips','john@gmail.com', '9176841117','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(82513, 'RonaldTucker','john@gmail.com', '9176841120','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(82514, 'LindaHumphrey','john@gmail.com', '9176841119','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(82515, 'LeeQuezada','john@gmail.com', '9176841118','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(82516, 'RafaelHudson','john@gmail.com', '9176841116','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(82517, 'MarcYoungman','john@gmail.com', '9176841115','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(82518, 'RaymondSmith','john@gmail.com', '9176841114','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(82519, 'ShaneMulhern','john@gmail.com', '9176841113','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(82520, 'LoisBuckner','john@gmail.com', '9176841111','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(82521, 'WhitneyOliver','john@gmail.com', '9176841112','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(82522, 'LennaHensley','john@gmail.com', '9176841139','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(82523, 'KarenHale','john@gmail.com', '9176841138','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(82524, 'WayneArceneaux','john@gmail.com', '9176841140','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(82525, 'LatashaKelley','john@gmail.com', '9176841141','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(89013, 'RebeccaSolomon','john@gmail.com', '9176841174','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(89014, 'DorothyFlora','john@gmail.com', '9176841173','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(89015, 'ErvinJoyce','john@gmail.com', '9176841172','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(89016, 'AmeliaHoffman','john@gmail.com', '9176841171','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(89017, 'EvelynFlowers','john@gmail.com', '9176841170','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(89018, 'JaneElliott','john@gmail.com', '9176841169','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(89019, 'PhyllisDamico','john@gmail.com', '9176841168','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(89510, 'DorothyOchoa','john@gmail.com', '9176841135','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(89511, 'DanielBlackwood','john@gmail.com', '9176841136','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(89513, 'EuniceMcMullen','john@gmail.com', '9176841137','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(89810, 'EdelmiraHiggins','john@gmail.com', '9176841110','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(89811, 'RobbyFrancisco','john@gmail.com', '9176841111','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(89812, 'RichardBerry','john@gmail.com', '9176841112','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(89813, 'RobertBennett','john@gmail.com', '9176841113','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(89814, 'TimothyLoera','john@gmail.com', '9176841114','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(89815, 'JoyMoore','john@gmail.com', '9176841115','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(99013, 'HelenMackin','john@gmail.com', '9176841181','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(99014, 'RobertDupree','john@gmail.com', '9176841180','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(99015, 'MichaelTaylor','john@gmail.com', '9176841179','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(99016, 'NancyHigh','john@gmail.com', '9176841178','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(99017, 'MarieSmith','john@gmail.com', '9176841177','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(99018, 'NellieMorgan','john@gmail.com', '9176841176','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(99019, 'SylviaGarcia','john@gmail.com', '9176841175','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(99027, 'SaraDejesus','john@gmail.com', '9176841184','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(99028, 'GeraldDay','john@gmail.com', '9176841183','Student','cust_address123');
INSERT INTO customer (customerid,username,email,phone,cust_role,cust_address) VALUES(99029, 'CarlaJohnson','john@gmail.com', '9176841182','Student','cust_address123');

CREATE TABLE account (
  accountid int identity,
  customerid int,
  userpassword varchar(20) NOT NULL,
  PRIMARY KEY (accountid),
  constraint mem_fk Foreign Key (customerid) references customer(customerid)
);

INSERT INTO account (customerid, userpassword) VALUES(42520, 'JuliaCasias123');
INSERT INTO account (customerid, userpassword) VALUES(42521, 'RalphHeight123');
INSERT INTO account (customerid, userpassword) VALUES(42522, 'JohnKemp123');
INSERT INTO account (customerid, userpassword) VALUES(42523, 'DannyAnkney123');
INSERT INTO account (customerid, userpassword) VALUES(42524, 'CharlesPainter123');
INSERT INTO account (customerid, userpassword) VALUES(42525, 'JohnTurner123');
INSERT INTO account (customerid, userpassword) VALUES(42526, 'NormaCole123');
INSERT INTO account (customerid, userpassword) VALUES(42527, 'DawneWillett123');
INSERT INTO account (customerid, userpassword) VALUES(42528, 'SamuelAbernathy123');
INSERT INTO account (customerid, userpassword) VALUES(42529, 'EricMiskell123');
INSERT INTO account (customerid, userpassword) VALUES(49511, 'RudolfCampbell123');
INSERT INTO account (customerid, userpassword) VALUES(49519, 'LillieClayton123');
INSERT INTO account (customerid, userpassword) VALUES(49810, 'DuaneReyes123');
INSERT INTO account (customerid, userpassword) VALUES(49811, 'JuanTyler123');
INSERT INTO account (customerid, userpassword) VALUES(49812, 'GlennChrist123');
INSERT INTO account (customerid, userpassword) VALUES(49813, 'MarcusPepe123');
INSERT INTO account (customerid, userpassword) VALUES(52010, 'MarciaWillis123');
INSERT INTO account (customerid, userpassword) VALUES(52011, 'PaulaRidenour123');
INSERT INTO account (customerid, userpassword) VALUES(52012, 'BaileyEubanks123');
INSERT INTO account (customerid, userpassword) VALUES(52013, 'DebbieBrown123');
INSERT INTO account (customerid, userpassword) VALUES(52014, 'VernonMuller123');
INSERT INTO account (customerid, userpassword) VALUES(52015, 'ShannonStewart123');
INSERT INTO account (customerid, userpassword) VALUES(52016, 'ReginaCayer123');
INSERT INTO account (customerid, userpassword) VALUES(52017, 'JamesTesterman123');
INSERT INTO account (customerid, userpassword) VALUES(52018, 'HelenMosier123');
INSERT INTO account (customerid, userpassword) VALUES(52019, 'DarinMayes123');
INSERT INTO account (customerid, userpassword) VALUES(52024, 'MicheleAkins123');
INSERT INTO account (customerid, userpassword) VALUES(52025, 'VivianReimer123');
INSERT INTO account (customerid, userpassword) VALUES(52026, 'LindaJackson123');
INSERT INTO account (customerid, userpassword) VALUES(52027, 'ArleneWoolford123');
INSERT INTO account (customerid, userpassword) VALUES(52028, 'HoseaRoberts123');
INSERT INTO account (customerid, userpassword) VALUES(52029, 'GloriaBeckett123');
INSERT INTO account (customerid, userpassword) VALUES(52521, 'ColleenEngland123');
INSERT INTO account (customerid, userpassword) VALUES(52522, 'BruceMedina123');
INSERT INTO account (customerid, userpassword) VALUES(52523, 'CarolLarsen123');
INSERT INTO account (customerid, userpassword) VALUES(52524, 'BessieIson123');
INSERT INTO account (customerid, userpassword) VALUES(52525, 'PamelaBuchanan123');
INSERT INTO account (customerid, userpassword) VALUES(52526, 'LouieByers123');
INSERT INTO account (customerid, userpassword) VALUES(52527, 'RichardAgustin123');
INSERT INTO account (customerid, userpassword) VALUES(52528, 'MartinArndt123');
INSERT INTO account (customerid, userpassword) VALUES(52529, 'CaseyMartin123');
INSERT INTO account (customerid, userpassword) VALUES(59810, 'MonaMorris123');
INSERT INTO account (customerid, userpassword) VALUES(59813, 'KatherineButts123');
INSERT INTO account (customerid, userpassword) VALUES(69510, 'CliftonSilva123');
INSERT INTO account (customerid, userpassword) VALUES(69511, 'EstherBrown123');
INSERT INTO account (customerid, userpassword) VALUES(69512, 'MarkTakahashi123');
INSERT INTO account (customerid, userpassword) VALUES(69513, 'JesusHuber123');
INSERT INTO account (customerid, userpassword) VALUES(69515, 'ConradKnox123');
INSERT INTO account (customerid, userpassword) VALUES(70012, 'DanaMonarrez123');
INSERT INTO account (customerid, userpassword) VALUES(70013, 'DollyJaramillo123');
INSERT INTO account (customerid, userpassword) VALUES(70014, 'PatLeal123');
INSERT INTO account (customerid, userpassword) VALUES(70015, 'JessicaEscobedo123');
INSERT INTO account (customerid, userpassword) VALUES(70016, 'AltaNelson123');
INSERT INTO account (customerid, userpassword) VALUES(70018, 'YvonneShaw123');
INSERT INTO account (customerid, userpassword) VALUES(70019, 'KariLemon123');
INSERT INTO account (customerid, userpassword) VALUES(72010, 'MattieHalsey123');
INSERT INTO account (customerid, userpassword) VALUES(72011, 'CarolJackson123');
INSERT INTO account (customerid, userpassword) VALUES(72012, 'HerbertHerrman123');
INSERT INTO account (customerid, userpassword) VALUES(72013, 'HarryGoss123');
INSERT INTO account (customerid, userpassword) VALUES(72014, 'KimberlyVerret123');
INSERT INTO account (customerid, userpassword) VALUES(72015, 'JeffAshley123');
INSERT INTO account (customerid, userpassword) VALUES(72016, 'FrancisJimerson123');
INSERT INTO account (customerid, userpassword) VALUES(72018, 'DorothyMauch123');
INSERT INTO account (customerid, userpassword) VALUES(72019, 'MarcusWittmer123');
INSERT INTO account (customerid, userpassword) VALUES(79810, 'GaryLeeper123');
INSERT INTO account (customerid, userpassword) VALUES(79812, 'KennethWelch123');
INSERT INTO account (customerid, userpassword) VALUES(79813, 'LouanneNorton123');
INSERT INTO account (customerid, userpassword) VALUES(79814, 'RichardSmith123');
INSERT INTO account (customerid, userpassword) VALUES(79815, 'RitaMontgomery123');
INSERT INTO account (customerid, userpassword) VALUES(79817, 'EvelynSisk123');
INSERT INTO account (customerid, userpassword) VALUES(82510, 'RichardSchroeder123');
INSERT INTO account (customerid, userpassword) VALUES(82511, 'FredMiura123');
INSERT INTO account (customerid, userpassword) VALUES(82512, 'DavidPhillips123');
INSERT INTO account (customerid, userpassword) VALUES(82513, 'RonaldTucker123');
INSERT INTO account (customerid, userpassword) VALUES(82514, 'LindaHumphrey123');
INSERT INTO account (customerid, userpassword) VALUES(82515, 'LeeQuezada123');
INSERT INTO account (customerid, userpassword) VALUES(82516, 'RafaelHudson123');
INSERT INTO account (customerid, userpassword) VALUES(82517, 'MarcYoungman123');
INSERT INTO account (customerid, userpassword) VALUES(82518, 'RaymondSmith123');
INSERT INTO account (customerid, userpassword) VALUES(82519, 'ShaneMulhern123');
INSERT INTO account (customerid, userpassword) VALUES(82520, 'LoisBuckner123');
INSERT INTO account (customerid, userpassword) VALUES(82521, 'WhitneyOliver123');
INSERT INTO account (customerid, userpassword) VALUES(82522, 'LennaHensley123');
INSERT INTO account (customerid, userpassword) VALUES(82523, 'KarenHale123');
INSERT INTO account (customerid, userpassword) VALUES(82524, 'WayneArceneaux123');
INSERT INTO account (customerid, userpassword) VALUES(82525, 'LatashaKelley123');
INSERT INTO account (customerid, userpassword) VALUES(89013, 'RebeccaSolomon123');
INSERT INTO account (customerid, userpassword) VALUES(89014, 'DorothyFlora123');
INSERT INTO account (customerid, userpassword) VALUES(89015, 'ErvinJoyce123');
INSERT INTO account (customerid, userpassword) VALUES(89016, 'AmeliaHoffman123');
INSERT INTO account (customerid, userpassword) VALUES(89017, 'EvelynFlowers123');
INSERT INTO account (customerid, userpassword) VALUES(89018, 'JaneElliott123');
INSERT INTO account (customerid, userpassword) VALUES(89019, 'PhyllisDamico123');
INSERT INTO account (customerid, userpassword) VALUES(89510, 'DorothyOchoa123');
INSERT INTO account (customerid, userpassword) VALUES(89511, 'DanielBlackwood123');
INSERT INTO account (customerid, userpassword) VALUES(89513, 'EuniceMcMullen123');
INSERT INTO account (customerid, userpassword) VALUES(89810, 'EdelmiraHiggins123');
INSERT INTO account (customerid, userpassword) VALUES(89811, 'RobbyFrancisco123');
INSERT INTO account (customerid, userpassword) VALUES(89812, 'RichardBerry123');
INSERT INTO account (customerid, userpassword) VALUES(89813, 'RobertBennett123');
INSERT INTO account (customerid, userpassword) VALUES(89814, 'TimothyLoera123');
INSERT INTO account (customerid, userpassword) VALUES(89815, 'JoyMoore123');
INSERT INTO account (customerid, userpassword) VALUES(99013, 'HelenMackin123');
INSERT INTO account (customerid, userpassword) VALUES(99014, 'RobertDupree123');
INSERT INTO account (customerid, userpassword) VALUES(99015, 'MichaelTaylor123');
INSERT INTO account (customerid, userpassword) VALUES(99016, 'NancyHigh123');
INSERT INTO account (customerid, userpassword) VALUES(99017, 'MarieSmith123');
INSERT INTO account (customerid, userpassword) VALUES(99018, 'NellieMorgan123');
INSERT INTO account (customerid, userpassword) VALUES(99019, 'SylviaGarcia123');
INSERT INTO account (customerid, userpassword) VALUES(99027, 'SaraDejesus123');
INSERT INTO account (customerid, userpassword) VALUES(99028, 'GeraldDay123');
INSERT INTO account (customerid, userpassword) VALUES(99029, 'CarlaJohnson123');

CREATE TABLE [dbo].[ItemCategory]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Category_name] NVARCHAR(50) NOT NULL
);

CREATE TABLE MenuItem
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[Item_name] NVARCHAR(50) NOT NULL,
	[Item_description] NVARCHAR(255) NOT NULL,
	[Item_image_url] NVARCHAR(50) NOT NULL,
	[Item_price] FLOAT NOT NULL,
	[Category_id] INT NULL,
	CONSTRAINT cat_id_fk FOREIGN KEY(Category_id) REFERENCES ItemCategory(Id)
);

CREATE TABLE PlacedOrder
(
	[Order_Id] INT NOT NULL,
	[MenuItem_id] INT NOT NULL ,
	[Price_item] INT NULL,
	[Quantity_item] INT NOT NULL,
	PRIMARY key (Order_Id,MenuItem_id)
);


CREATE TABLE BillDetail
(
	[Bill_Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[Order_time] DateTime NOT NULL,
	[Delivery_cust_address] NVARCHAR(255) NOT NULL,
	[Customer_id] INT NULL,
	[Order_Id] INT NOT NULL,
	CONSTRAINT customer_id_fk FOREIGN KEY([Customer_id]) REFERENCES customer(customerid)
);