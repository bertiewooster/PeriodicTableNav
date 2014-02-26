DROP TABLE IF EXISTS "bases";
CREATE TABLE "bases" ("id" INTEGER PRIMARY KEY  NOT NULL  DEFAULT (null) ,"base" TEXT);
INSERT INTO "bases" VALUES(1);
INSERT INTO "bases" VALUES(2,'[He]');
INSERT INTO "bases" VALUES(3,'[Ne]');
INSERT INTO "bases" VALUES(4,'[Ar]');
INSERT INTO "bases" VALUES(5,'[Kr]');
INSERT INTO "bases" VALUES(6,'[Xe]');
INSERT INTO "bases" VALUES(7,'[Rn]');
INSERT INTO "bases" VALUES(8,'[Uuo]');
DROP TABLE IF EXISTS "elements";
CREATE TABLE "elements" ("atomic_num" INTEGER PRIMARY KEY  NOT NULL ,"symbol" TEXT,"name" TEXT,"name_origin" TEXT,"period" INTEGER,"atomic_weight" NUMERIC,"atomic_wt_is_mass_number_of_longest_lived_isotope" BOOL,"specific_heat_capacity_j_per_gk" NUMERIC,"density_g_per_cm3" NUMERIC,"density_is_estimated" BOOL,"melting_point_k" NUMERIC,"melt_is_estimated" BOOL,"boiling_point_k" NUMERIC,"boil_is_estimated" BOOL,"electronegativity" NUMERIC,"abundance_mg_per_kg" NUMERIC,"abundance_is_upper_limit" BOOL,"grouplin" INTEGER DEFAULT (null));
INSERT INTO "elements" VALUES(1,'H','Hydrogen','the Greek ''hydro'' and ''genes'' meaning water-forming',1,1.008,FALSE,14.304,0.00008988,FALSE,14.01,FALSE,20.28,FALSE,2.2,1400,FALSE,1);
INSERT INTO "elements" VALUES(2,'He','Helium','the Greek ''helios'' meaning sun',1,4.002602,FALSE,5.193,0.0001785,FALSE,0.956,FALSE,4.22,FALSE,NULL,0.008,FALSE,2);
INSERT INTO "elements" VALUES(3,'Li','Lithium','the Greek ''lithos'' meaning stone',2,6.942,FALSE,3.582,0.534,FALSE,453.69,FALSE,1560,FALSE,0.98,20,FALSE,1);
INSERT INTO "elements" VALUES(4,'Be','Beryllium','"the Greek name for beryl, ''beryllo''"',2,9.012182,FALSE,1.825,1.85,FALSE,1560,FALSE,2742,FALSE,1.57,2.8,FALSE,2);
INSERT INTO "elements" VALUES(5,'B','Boron','"the Arabic ''buraq'', which was the name for borax"',2,10.81,FALSE,1.026,2.34,FALSE,2349,FALSE,4200,FALSE,2.04,10,FALSE,27);
INSERT INTO "elements" VALUES(6,'C','Carbon','"the Latin ''carbo'', meaning charcoal"',2,12.011,FALSE,0.709,2.267,FALSE,3800,FALSE,4300,FALSE,2.55,200,FALSE,28);
INSERT INTO "elements" VALUES(7,'N','Nitrogen','the Greek ''nitron'' and ''genes'' meaning nitre-forming',2,14.007,FALSE,1.04,0.0012506,FALSE,63.15,FALSE,77.36,FALSE,3.04,19,FALSE,29);
INSERT INTO "elements" VALUES(8,'O','Oxygen','the Greek ''oxy'' and ''genes'' meaning acid-forming',2,15.999,FALSE,0.918,0.001429,FALSE,54.36,FALSE,90.2,FALSE,3.44,461000,FALSE,30);
INSERT INTO "elements" VALUES(9,'F','Fluorine','"the Latin ''fluere'', meaning to flow"',2,18.9984032,FALSE,0.824,0.001696,FALSE,53.53,FALSE,85.03,FALSE,3.98,585,FALSE,31);
INSERT INTO "elements" VALUES(10,'Ne','Neon','"the Greek ''neos'', meaning new"',2,20.1797,FALSE,1.03,0.0008999,FALSE,24.56,FALSE,27.07,FALSE,NULL,0.005,FALSE,32);
INSERT INTO "elements" VALUES(11,'Na','Sodium','the English word soda (natrium in Latin)[2]',3,22.98976928,FALSE,1.228,0.971,FALSE,370.87,FALSE,1156,FALSE,0.93,23600,FALSE,1);
INSERT INTO "elements" VALUES(12,'Mg','Magnesium','"Magnesia, a district of Eastern Thessaly in Greece"',3,24.305,FALSE,1.023,1.738,FALSE,923,FALSE,1363,FALSE,1.31,23300,FALSE,2);
INSERT INTO "elements" VALUES(13,'Al','Aluminum','"the Latin name for alum, ''alumen'' meaning bitter salt"',3,26.9815386,FALSE,0.897,2.698,FALSE,933.47,FALSE,2792,FALSE,1.61,82300,FALSE,27);
INSERT INTO "elements" VALUES(14,'Si','Silicon','"the Latin ''silex'' or ''silicis'', meaning flint"',3,28.085,FALSE,0.705,2.3296,FALSE,1687,FALSE,3538,FALSE,1.9,282000,FALSE,28);
INSERT INTO "elements" VALUES(15,'P','Phosphorus','"the Greek ''phosphoros'', meaning bringer of light"',3,30.973762,FALSE,0.769,1.82,FALSE,317.3,FALSE,550,FALSE,2.19,1050,FALSE,29);
INSERT INTO "elements" VALUES(16,'S','Sulfur','"Either from the Sanskrit ''sulvere'', or the Latin ''sulfurium'', both names for sulfur[2]"',3,32.06,FALSE,0.71,2.067,FALSE,388.36,FALSE,717.87,FALSE,2.58,350,FALSE,30);
INSERT INTO "elements" VALUES(17,'Cl','Chlorine','"the Greek ''chloros'', meaning greenish yellow"',3,35.45,FALSE,0.479,0.003214,FALSE,171.6,FALSE,239.11,FALSE,3.16,145,FALSE,31);
INSERT INTO "elements" VALUES(18,'Ar','Argon','"the Greek, ''argos'', meaning idle"',3,39.948,FALSE,0.52,0.0017837,FALSE,83.8,FALSE,87.3,FALSE,NULL,3.5,FALSE,32);
INSERT INTO "elements" VALUES(19,'K','Potassium','the English word potash (kalium in Latin)[2]',4,39.0983,FALSE,0.757,0.862,FALSE,336.53,FALSE,1032,FALSE,0.82,20900,FALSE,1);
INSERT INTO "elements" VALUES(20,'Ca','Calcium','the Latin ''calx'' meaning lime',4,40.078,FALSE,0.647,1.54,FALSE,1115,FALSE,1757,FALSE,1,41500,FALSE,2);
INSERT INTO "elements" VALUES(21,'Sc','Scandium','Scandinavia (with the Latin name Scandia)',4,44.955912,FALSE,0.568,2.989,FALSE,1814,FALSE,3109,FALSE,1.36,22,FALSE,17);
INSERT INTO "elements" VALUES(22,'Ti','Titanium','"Titans, the sons of the Earth goddess of Greek mythology"',4,47.867,FALSE,0.523,4.54,FALSE,1941,FALSE,3560,FALSE,1.54,5650,FALSE,18);
INSERT INTO "elements" VALUES(23,'V','Vanadium','"Vanadis, an old Norse name for the Scandinavian goddess Freyja"',4,50.9415,FALSE,0.489,6.11,FALSE,2183,FALSE,3680,FALSE,1.63,120,FALSE,19);
INSERT INTO "elements" VALUES(24,'Cr','Chromium','"the Greek ''chroma'', meaning colour"',4,51.9961,FALSE,0.449,7.15,FALSE,2180,FALSE,2944,FALSE,1.66,102,FALSE,20);
INSERT INTO "elements" VALUES(25,'Mn','Manganese','"Either the Latin ''magnes'', meaning magnet or from the black magnesium oxide, ''magnesia nigra''"',4,54.938045,FALSE,0.479,7.44,FALSE,1519,FALSE,2334,FALSE,1.55,950,FALSE,21);
INSERT INTO "elements" VALUES(26,'Fe','Iron','the Anglo-Saxon name iren (ferrum in Latin)',4,55.845,FALSE,0.449,7.874,FALSE,1811,FALSE,3134,FALSE,1.83,56300,FALSE,22);
INSERT INTO "elements" VALUES(27,'Co','Cobalt','"the German word ''kobald'', meaning goblin"',4,58.933195,FALSE,0.421,8.86,FALSE,1768,FALSE,3200,FALSE,1.88,25,FALSE,23);
INSERT INTO "elements" VALUES(28,'Ni','Nickel','the shortened of the German ''kupfernickel'' meaning either devil''s copper or St. Nicholas''s copper',4,58.6934,FALSE,0.444,8.912,FALSE,1728,FALSE,3186,FALSE,1.91,84,FALSE,24);
INSERT INTO "elements" VALUES(29,'Cu','Copper','"the Old English name coper in turn derived from the Latin ''Cyprium aes'', meaning a metal from Cyprus"',4,63.546,FALSE,0.385,8.96,FALSE,1357.77,FALSE,2835,FALSE,1.9,60,FALSE,25);
INSERT INTO "elements" VALUES(30,'Zn','Zinc','"the German, ''zinc'', which may in turn be derived from the Persian word ''sing'', meaning stone"',4,65.38,FALSE,0.388,7.134,FALSE,692.88,FALSE,1180,FALSE,1.65,70,FALSE,26);
INSERT INTO "elements" VALUES(31,'Ga','Gallium','France (with the Latin name Gallia)',4,69.723,FALSE,0.371,5.907,FALSE,302.9146,FALSE,2477,FALSE,1.81,19,FALSE,27);
INSERT INTO "elements" VALUES(32,'Ge','Germanium','Germany (with the Latin name Germania)',4,72.63,FALSE,0.32,5.323,FALSE,1211.4,FALSE,3106,FALSE,2.01,1.5,FALSE,28);
INSERT INTO "elements" VALUES(33,'As','Arsenic','the Greek name ''arsenikon'' for the yellow pigment orpiment',4,74.9216,FALSE,0.329,5.776,FALSE,1090,FALSE,887,FALSE,2.18,1.8,FALSE,29);
INSERT INTO "elements" VALUES(34,'Se','Selenium','Moon (with the Greek name selene)',4,78.96,FALSE,0.321,4.809,FALSE,453,FALSE,958,FALSE,2.55,0.05,FALSE,30);
INSERT INTO "elements" VALUES(35,'Br','Bromine','the Greek ''bromos'' meaning stench',4,79.9049,FALSE,0.474,3.122,FALSE,265.8,FALSE,332,FALSE,2.96,2.4,FALSE,31);
INSERT INTO "elements" VALUES(36,'Kr','Krypton','"the Greek ''kryptos'', meaning hidden"',4,83.798,FALSE,0.248,0.003733,FALSE,115.79,FALSE,119.93,FALSE,3,0.001,TRUE,32);
INSERT INTO "elements" VALUES(37,'Rb','Rubidium','"the Latin ''rubidius'', meaning deepest red"',5,85.4678,FALSE,0.363,1.532,FALSE,312.46,FALSE,961,FALSE,0.82,90,FALSE,1);
INSERT INTO "elements" VALUES(38,'Sr','Strontium','"Strontian, a small town in Scotland"',5,87.62,FALSE,0.301,2.64,FALSE,1050,FALSE,1655,FALSE,0.95,370,FALSE,2);
INSERT INTO "elements" VALUES(39,'Y','Yttrium','"Ytterby, Sweden"',5,88.90585,FALSE,0.298,4.469,FALSE,1799,FALSE,3609,FALSE,1.22,33,FALSE,17);
INSERT INTO "elements" VALUES(40,'Zr','Zirconium','"the Persian ''zargun'', meaning gold coloured"',5,91.224,FALSE,0.278,6.506,FALSE,2128,FALSE,4682,FALSE,1.33,165,FALSE,18);
INSERT INTO "elements" VALUES(41,'Nb','Niobium','"Niobe, daughter of king Tantalus from Greek mythology"',5,92.90638,FALSE,0.265,8.57,FALSE,2750,FALSE,5017,FALSE,1.6,20,FALSE,19);
INSERT INTO "elements" VALUES(42,'Mo','Molybdenum','the Greek ''molybdos'' meaning lead',5,95.96,FALSE,0.251,10.22,FALSE,2896,FALSE,4912,FALSE,2.16,1.2,FALSE,20);
INSERT INTO "elements" VALUES(43,'Tc','Technetium','the Greek ''tekhnetos'' meaning artificial',5,98,TRUE,NULL,11.5,FALSE,2430,FALSE,4538,FALSE,1.9,0.001,TRUE,21);
INSERT INTO "elements" VALUES(44,'Ru','Ruthenium','Russia (with the Latin name Ruthenia)',5,101.07,FALSE,0.238,12.37,FALSE,2607,FALSE,4423,FALSE,2.2,0.001,FALSE,22);
INSERT INTO "elements" VALUES(45,'Rh','Rhodium','"the Greek ''rhodon'', meaning rose coloured"',5,102.9055,FALSE,0.243,12.41,FALSE,2237,FALSE,3968,FALSE,2.28,0.001,FALSE,23);
INSERT INTO "elements" VALUES(46,'Pd','Palladium','"the then recently-discovered asteroid Pallas, considered a planet at the time"',5,106.42,FALSE,0.244,12.02,FALSE,1828.05,FALSE,3236,FALSE,2.2,0.015,FALSE,24);
INSERT INTO "elements" VALUES(47,'Ag','Silver','the Anglo-Saxon name siolfur (argentum in Latin)[2]',5,107.8682,FALSE,0.235,10.501,FALSE,1234.93,FALSE,2435,FALSE,1.93,0.075,FALSE,25);
INSERT INTO "elements" VALUES(48,'Cd','Cadmium','"the Latin name for the mineral calmine, ''cadmia''"',5,112.411,FALSE,0.232,8.69,FALSE,594.22,FALSE,1040,FALSE,1.69,0.159,FALSE,26);
INSERT INTO "elements" VALUES(49,'In','Indium','"the Latin ''indicium'', meaning violet or indigo"',5,114.818,FALSE,0.233,7.31,FALSE,429.75,FALSE,2345,FALSE,1.78,0.25,FALSE,27);
INSERT INTO "elements" VALUES(50,'Sn','Tin','"the Anglo-Saxon word tin (stannum in Latin, meaning hard)"',5,118.71,FALSE,0.228,7.287,FALSE,505.08,FALSE,2875,FALSE,1.96,2.3,FALSE,28);
INSERT INTO "elements" VALUES(51,'Sb','Antimony','"the Greek ''anti � monos'', meaning not alone (stibium in Latin)"',5,121.76,FALSE,0.207,6.685,FALSE,903.78,FALSE,1860,FALSE,2.05,0.2,FALSE,29);
INSERT INTO "elements" VALUES(52,'Te','Tellurium','"Earth, the third planet on solar system (with the Latin word tellus)"',5,127.6,FALSE,0.202,6.232,FALSE,722.66,FALSE,1261,FALSE,2.1,0.001,FALSE,30);
INSERT INTO "elements" VALUES(53,'I','Iodine','the Greek ''iodes'' meaning violet',5,126.90447,FALSE,0.214,4.93,FALSE,386.85,FALSE,457.4,FALSE,2.66,0.45,FALSE,31);
INSERT INTO "elements" VALUES(54,'Xe','Xenon','the Greek ''xenos'' meaning stranger',5,131.293,FALSE,0.158,0.005887,FALSE,161.4,FALSE,165.03,FALSE,2.6,0.001,TRUE,32);
INSERT INTO "elements" VALUES(55,'Cs','Cesium','"the Latin ''caesius'', meaning sky blue"',6,132.9054519,FALSE,0.242,1.873,FALSE,301.59,FALSE,944,FALSE,0.79,3,FALSE,1);
INSERT INTO "elements" VALUES(56,'Ba','Barium','"the Greek ''barys'', meaning heavy"',6,137.327,FALSE,0.204,3.594,FALSE,1000,FALSE,2170,FALSE,0.89,425,FALSE,2);
INSERT INTO "elements" VALUES(57,'La','Lanthanum','"the Greek ''lanthanein'', meaning to lie hidden"',6,138.90547,FALSE,0.195,6.145,FALSE,1193,FALSE,3737,FALSE,1.1,39,FALSE,3);
INSERT INTO "elements" VALUES(58,'Ce','Cerium','"Ceres, the Roman God of agriculture"',6,140.116,FALSE,0.192,6.77,FALSE,1068,FALSE,3716,FALSE,1.12,66.5,FALSE,4);
INSERT INTO "elements" VALUES(59,'Pr','Praseodymium','the Greek ''prasios didymos'' meaning green twin',6,140.90765,FALSE,0.193,6.773,FALSE,1208,FALSE,3793,FALSE,1.13,9.2,FALSE,5);
INSERT INTO "elements" VALUES(60,'Nd','Neodymium','the Greek ''neos didymos'' meaning new twin',6,144.242,FALSE,0.19,7.007,FALSE,1297,FALSE,3347,FALSE,1.14,41.5,FALSE,6);
INSERT INTO "elements" VALUES(61,'Pm','Promethium','Prometheus of Greek mythology who stole fire from the Gods and gave it to humans',6,145,TRUE,NULL,7.26,FALSE,1315,FALSE,3273,FALSE,1.13,0.001,TRUE,7);
INSERT INTO "elements" VALUES(62,'Sm','Samarium','"Samarskite, the name of the mineral from which it was first isolated"',6,150.36,FALSE,0.197,7.52,FALSE,1345,FALSE,2067,FALSE,1.17,7.05,FALSE,8);
INSERT INTO "elements" VALUES(63,'Eu','Europium','Europe',6,151.964,FALSE,0.182,5.243,FALSE,1099,FALSE,1802,FALSE,1.2,2,FALSE,9);
INSERT INTO "elements" VALUES(64,'Gd','Gadolinium','"Johan Gadolin, chemist, physicist and mineralogist"',6,157.25,FALSE,0.236,7.895,FALSE,1585,FALSE,3546,FALSE,1.2,6.2,FALSE,10);
INSERT INTO "elements" VALUES(65,'Tb','Terbium','"Ytterby, Sweden"',6,158.92535,FALSE,0.182,8.229,FALSE,1629,FALSE,3503,FALSE,1.2,1.2,FALSE,11);
INSERT INTO "elements" VALUES(66,'Dy','Dysprosium','"the Greek ''dysprositos'', meaning hard to get"',6,162.5,FALSE,0.17,8.55,FALSE,1680,FALSE,2840,FALSE,1.22,5.2,FALSE,12);
INSERT INTO "elements" VALUES(67,'Ho','Holmium','"Stockholm, Sweden (with the Latin name Holmia)"',6,164.93032,FALSE,0.165,8.795,FALSE,1734,FALSE,2993,FALSE,1.23,1.3,FALSE,13);
INSERT INTO "elements" VALUES(68,'Er','Erbium','"Ytterby, Sweden"',6,167.259,FALSE,0.168,9.066,FALSE,1802,FALSE,3141,FALSE,1.24,3.5,FALSE,14);
INSERT INTO "elements" VALUES(69,'Tm','Thulium','"Thule, the ancient name for Scandinavia"',6,168.93421,FALSE,0.16,9.321,FALSE,1818,FALSE,2223,FALSE,1.25,0.52,FALSE,15);
INSERT INTO "elements" VALUES(70,'Yb','Ytterbium','"Ytterby, Sweden"',6,173.054,FALSE,0.155,6.965,FALSE,1097,FALSE,1469,FALSE,1.1,3.2,FALSE,16);
INSERT INTO "elements" VALUES(71,'Lu','Lutetium','"Paris, France (with the Roman name Lutetia)"',6,174.9668,FALSE,0.154,9.84,FALSE,1925,FALSE,3675,FALSE,1.27,0.8,FALSE,17);
INSERT INTO "elements" VALUES(72,'Hf','Hafnium','"Copenhagen, Denmark (with the Latin name Hafnia)"',6,178.49,FALSE,0.144,13.31,FALSE,2506,FALSE,4876,FALSE,1.3,3,FALSE,18);
INSERT INTO "elements" VALUES(73,'Ta','Tantalum','"King Tantalus, father of Niobe from Greek mythology"',6,180.94788,FALSE,0.14,16.654,FALSE,3290,FALSE,5731,FALSE,1.5,2,FALSE,19);
INSERT INTO "elements" VALUES(74,'W','Tungsten','"the Swedish ''tung sten'' meaning heavy stone (W is wolfram, the old name of the tungsten mineral wolframite)[2]"',6,183.84,FALSE,0.132,19.25,FALSE,3695,FALSE,5828,FALSE,2.36,1.3,FALSE,20);
INSERT INTO "elements" VALUES(75,'Re','Rhenium','"Rhine, a river that flows from Grisons in the eastern Swiss Alps to the North Sea coast in the Netherlands (with the Latin name Rhenia)"',6,186.207,FALSE,0.137,21.02,FALSE,3459,FALSE,5869,FALSE,1.9,0.001,TRUE,21);
INSERT INTO "elements" VALUES(76,'Os','Osmium','"the Greek ''osme'', meaning smell"',6,190.23,FALSE,0.13,22.61,FALSE,3306,FALSE,5285,FALSE,2.2,0.002,FALSE,22);
INSERT INTO "elements" VALUES(77,'Ir','Iridium','"Iris, the Greek goddess of the rainbow"',6,192.217,FALSE,0.131,22.56,FALSE,2719,FALSE,4701,FALSE,2.2,0.001,FALSE,23);
INSERT INTO "elements" VALUES(78,'Pt','Platinum','"the Spanish ''platina'', meaning little silver"',6,195.084,FALSE,0.133,21.46,FALSE,2041.4,FALSE,4098,FALSE,2.28,0.005,FALSE,24);
INSERT INTO "elements" VALUES(79,'Au','Gold','"the Anglo-Saxon word gold (aurum in Latin, meaning glow of sunrise)[2]"',6,196.966569,FALSE,0.129,19.282,FALSE,1337.33,FALSE,3129,FALSE,2.54,0.004,FALSE,25);
INSERT INTO "elements" VALUES(80,'Hg','Mercury','"Mercury, the first planet in the Solar System (Hg from former name hydrargyrum, from Greek hydr- water and argyros silver)"',6,200.592,FALSE,0.14,13.5336,FALSE,234.43,FALSE,629.88,FALSE,2,0.085,FALSE,26);
INSERT INTO "elements" VALUES(81,'Tl','Thallium','"the Greek ''thallos'', meaning a green twig"',6,204.389,FALSE,0.129,11.85,FALSE,577,FALSE,1746,FALSE,1.62,0.85,FALSE,27);
INSERT INTO "elements" VALUES(82,'Pb','Lead','the Anglo-Saxon lead (plumbum in Latin)[2]',6,207.2,FALSE,0.129,11.342,FALSE,600.61,FALSE,2022,FALSE,1.87,14,FALSE,28);
INSERT INTO "elements" VALUES(83,'Bi','Bismuth','the German ''Bisemutum'' a corruption of ''Weisse Masse'' meaning white mass',6,208.9804,FALSE,0.122,9.807,FALSE,544.7,FALSE,1837,FALSE,2.02,0.009,FALSE,29);
INSERT INTO "elements" VALUES(84,'Po','Polonium','"Poland, the native country of Marie Curie, who first isolated the element"',6,209,TRUE,NULL,9.32,FALSE,527,FALSE,1235,FALSE,2,0.001,TRUE,30);
INSERT INTO "elements" VALUES(85,'At','Astatine','"the Greek ''astatos'', meaning unstable"',6,210,TRUE,NULL,7,FALSE,575,FALSE,610,FALSE,2.2,0.001,TRUE,31);
INSERT INTO "elements" VALUES(86,'Rn','Radon','"From radium, as it was first detected as an emission from radium during radioactive decay"',6,222,TRUE,0.094,0.00973,FALSE,202,FALSE,211.3,FALSE,2.2,0.001,TRUE,32);
INSERT INTO "elements" VALUES(87,'Fr','Francium','"France, where it was first discovered"',7,223,TRUE,NULL,1.87,FALSE,300,FALSE,950,FALSE,0.7,0.001,TRUE,1);
INSERT INTO "elements" VALUES(88,'Ra','Radium','"the Latin ''radius'', meaning ray"',7,226,TRUE,0.094,5.5,FALSE,973,FALSE,2010,FALSE,0.9,0.001,TRUE,2);
INSERT INTO "elements" VALUES(89,'Ac','Actinium','"the Greek ''actinos'', meaning a ray"',7,227,TRUE,0.12,10.07,FALSE,1323,FALSE,3471,FALSE,1.1,0.001,TRUE,3);
INSERT INTO "elements" VALUES(90,'Th','Thorium','"Thor, the Scandinavian god of thunder"',7,232.03806,FALSE,0.113,11.72,FALSE,2115,FALSE,5061,FALSE,1.3,9.6,FALSE,4);
INSERT INTO "elements" VALUES(91,'Pa','Protactinium','"the Greek ''protos'', meaning first, as a prefix to the element actinium, which is produced through the radioactive decay of protactinium"',7,231.03588,FALSE,NULL,15.37,FALSE,1841,FALSE,4300,FALSE,1.5,0.001,TRUE,5);
INSERT INTO "elements" VALUES(92,'U','Uranium','"Uranus, the seventh planet in the Solar System"',7,238.02891,FALSE,0.116,18.95,FALSE,1405.3,FALSE,4404,FALSE,1.38,2.7,FALSE,6);
INSERT INTO "elements" VALUES(93,'Np','Neptunium','"Neptune, the eighth planet in the Solar System"',7,237,TRUE,NULL,20.45,FALSE,917,FALSE,4273,FALSE,1.36,0.001,TRUE,7);
INSERT INTO "elements" VALUES(94,'Pu','Plutonium','"Pluto, a dwarf planet in the Solar System"',7,244,TRUE,NULL,19.84,FALSE,912.5,FALSE,3501,FALSE,1.28,0.001,TRUE,8);
INSERT INTO "elements" VALUES(95,'Am','Americium','"Americas, the continent where the element was first synthesized"',7,243,TRUE,NULL,13.69,FALSE,1449,FALSE,2880,FALSE,1.13,0.001,TRUE,9);
INSERT INTO "elements" VALUES(96,'Cm','Curium','"Pierre Curie, a physicist, and Marie Curie, a physicist and chemist"',7,247,TRUE,NULL,13.51,FALSE,1613,FALSE,3383,FALSE,1.28,0.001,TRUE,10);
INSERT INTO "elements" VALUES(97,'Bk','Berkelium','"Berkeley, California, USA, where the element was first synthesized"',7,247,TRUE,NULL,14.79,FALSE,1259,FALSE,2900,FALSE,1.3,0.001,TRUE,11);
INSERT INTO "elements" VALUES(98,'Cf','Californium','"State of California, USA, where the element was first synthesized"',7,251,TRUE,NULL,15.1,FALSE,1173,FALSE,1743,TRUE,1.3,0.001,TRUE,12);
INSERT INTO "elements" VALUES(99,'Es','Einsteinium','"Albert Einstein, physicist"',7,252,TRUE,NULL,8.84,FALSE,1133,FALSE,1269,TRUE,1.3,0,FALSE,13);
INSERT INTO "elements" VALUES(100,'Fm','Fermium','"Enrico Fermi, physicist"',7,257,TRUE,NULL,NULL,FALSE,1125,TRUE,NULL,FALSE,1.3,0,FALSE,14);
INSERT INTO "elements" VALUES(101,'Md','Mendelevium','"Dmitri Mendeleyev, chemist and inventor"',7,258,TRUE,NULL,NULL,FALSE,1100,TRUE,NULL,FALSE,1.3,0,FALSE,15);
INSERT INTO "elements" VALUES(102,'No','Nobelium','"Alfred Nobel, chemist, engineer, innovator, and armaments manufacturer"',7,259,TRUE,NULL,NULL,FALSE,1100,TRUE,NULL,FALSE,1.3,0,FALSE,16);
INSERT INTO "elements" VALUES(103,'Lr','Lawrencium','"Ernest O. Lawrence, physicist"',7,262,TRUE,NULL,NULL,FALSE,1900,TRUE,NULL,FALSE,1.3,0,FALSE,17);
INSERT INTO "elements" VALUES(104,'Rf','Rutherfordium','"Ernest Rutherford, chemist and physicist"',7,267,TRUE,NULL,23.2,TRUE,2400,TRUE,5800,TRUE,NULL,0,FALSE,18);
INSERT INTO "elements" VALUES(105,'Db','Dubnium','"Dubna, Russia"',7,268,TRUE,NULL,29.3,TRUE,NULL,FALSE,NULL,FALSE,NULL,0,FALSE,19);
INSERT INTO "elements" VALUES(106,'Sg','Seaborgium','"Glenn T. Seaborg, scientist"',7,269,TRUE,NULL,35,TRUE,NULL,FALSE,NULL,FALSE,NULL,0,FALSE,20);
INSERT INTO "elements" VALUES(107,'Bh','Bohrium','"Niels Bohr, physicist"',7,270,TRUE,NULL,37.1,TRUE,NULL,FALSE,NULL,FALSE,NULL,0,FALSE,21);
INSERT INTO "elements" VALUES(108,'Hs','Hassium','"Hesse, Germany, where the element was first synthesized"',7,269,TRUE,NULL,40.7,TRUE,NULL,FALSE,NULL,FALSE,NULL,0,FALSE,22);
INSERT INTO "elements" VALUES(109,'Mt','Meitnerium','"Lise Meitner, physicist"',7,278,TRUE,NULL,37.4,TRUE,NULL,FALSE,NULL,FALSE,NULL,0,FALSE,23);
INSERT INTO "elements" VALUES(110,'Ds','Darmstadtium','"Darmstadt, Germany, where the element was first synthesized"',7,281,TRUE,NULL,34.8,TRUE,NULL,FALSE,NULL,FALSE,NULL,0,FALSE,24);
INSERT INTO "elements" VALUES(111,'Rg','Roentgenium','"Wilhelm Conrad R�ntgen, physicist"',7,281,TRUE,NULL,28.7,TRUE,NULL,FALSE,NULL,FALSE,NULL,0,FALSE,25);
INSERT INTO "elements" VALUES(112,'Cn','Copernicium','"Nicolaus Copernicus, astronomer"',7,285,TRUE,NULL,23.7,TRUE,NULL,FALSE,357,FALSE,NULL,0,FALSE,26);
INSERT INTO "elements" VALUES(113,'Uut','Ununtrium','IUPAC systematic element name',7,286,TRUE,NULL,16,TRUE,700,TRUE,1400,TRUE,NULL,0,FALSE,27);
INSERT INTO "elements" VALUES(114,'Fl','Flerovium','"Georgy Flyorov, physicist"',7,289,TRUE,NULL,14,TRUE,340,TRUE,420,TRUE,NULL,0,FALSE,28);
INSERT INTO "elements" VALUES(115,'Uup','Ununpentium','IUPAC systematic element name',7,288,TRUE,NULL,13.5,TRUE,700,TRUE,1400,TRUE,NULL,0,FALSE,29);
INSERT INTO "elements" VALUES(116,'Lv','Livermorium','"Lawrence Livermore National Laboratory (in Livermore, California) which collaborated with JINR on its synthesis"',7,293,TRUE,NULL,12.9,TRUE,708.5,TRUE,1085,TRUE,NULL,0,FALSE,30);
INSERT INTO "elements" VALUES(117,'Uus','Ununseptium','IUPAC systematic element name',7,294,TRUE,NULL,7.2,TRUE,673,TRUE,823,TRUE,NULL,0,FALSE,31);
INSERT INTO "elements" VALUES(118,'Uuo','Ununoctium','IUPAC systematic element name',7,294,TRUE,NULL,5,TRUE,258,TRUE,263,TRUE,NULL,0,FALSE,32);
DROP TABLE IF EXISTS "orbitals";
CREATE TABLE "orbitals" ("id" INTEGER PRIMARY KEY  NOT NULL ,"n" INTEGER NOT NULL  DEFAULT (null) ,"l" CHAR);
INSERT INTO "orbitals" VALUES(1,1,'s');
INSERT INTO "orbitals" VALUES(2,2,'s');
INSERT INTO "orbitals" VALUES(3,2,'p');
INSERT INTO "orbitals" VALUES(4,3,'s');
INSERT INTO "orbitals" VALUES(5,3,'p');
INSERT INTO "orbitals" VALUES(6,4,'s');
INSERT INTO "orbitals" VALUES(7,3,'d');
INSERT INTO "orbitals" VALUES(8,4,'p');
INSERT INTO "orbitals" VALUES(9,5,'s');
INSERT INTO "orbitals" VALUES(10,4,'d');
INSERT INTO "orbitals" VALUES(11,5,'p');
INSERT INTO "orbitals" VALUES(12,6,'s');
INSERT INTO "orbitals" VALUES(13,4,'f');
INSERT INTO "orbitals" VALUES(14,5,'d');
INSERT INTO "orbitals" VALUES(15,6,'p');
INSERT INTO "orbitals" VALUES(16,7,'s');
INSERT INTO "orbitals" VALUES(17,5,'f');
INSERT INTO "orbitals" VALUES(18,6,'d');
INSERT INTO "orbitals" VALUES(19,7,'p');
DROP TABLE IF EXISTS "orbs";
CREATE TABLE "orbs" ("element_id" INTEGER NOT NULL , "orbital_id" INTEGER NOT NULL , "count" INTEGER, PRIMARY KEY ("element_id", "orbital_id"));
INSERT INTO "orbs" VALUES(1,1,1);
INSERT INTO "orbs" VALUES(2,1,2);
INSERT INTO "orbs" VALUES(3,2,1);
INSERT INTO "orbs" VALUES(4,2,2);
INSERT INTO "orbs" VALUES(5,2,2);
INSERT INTO "orbs" VALUES(5,3,1);
INSERT INTO "orbs" VALUES(6,2,2);
INSERT INTO "orbs" VALUES(6,3,2);
INSERT INTO "orbs" VALUES(7,2,2);
INSERT INTO "orbs" VALUES(7,3,3);
INSERT INTO "orbs" VALUES(8,2,2);
INSERT INTO "orbs" VALUES(8,3,4);
INSERT INTO "orbs" VALUES(9,2,2);
INSERT INTO "orbs" VALUES(9,3,5);
INSERT INTO "orbs" VALUES(10,2,2);
INSERT INTO "orbs" VALUES(10,3,6);
INSERT INTO "orbs" VALUES(11,4,1);
INSERT INTO "orbs" VALUES(12,4,2);
INSERT INTO "orbs" VALUES(13,4,2);
INSERT INTO "orbs" VALUES(13,5,1);
INSERT INTO "orbs" VALUES(14,4,2);
INSERT INTO "orbs" VALUES(14,5,2);
INSERT INTO "orbs" VALUES(15,4,2);
INSERT INTO "orbs" VALUES(15,5,3);
INSERT INTO "orbs" VALUES(16,4,2);
INSERT INTO "orbs" VALUES(16,5,4);
INSERT INTO "orbs" VALUES(17,4,2);
INSERT INTO "orbs" VALUES(17,5,5);
INSERT INTO "orbs" VALUES(18,4,2);
INSERT INTO "orbs" VALUES(18,5,6);
INSERT INTO "orbs" VALUES(19,6,1);
INSERT INTO "orbs" VALUES(20,6,2);
INSERT INTO "orbs" VALUES(21,6,2);
INSERT INTO "orbs" VALUES(21,7,1);
INSERT INTO "orbs" VALUES(22,6,2);
INSERT INTO "orbs" VALUES(22,7,2);
INSERT INTO "orbs" VALUES(23,6,2);
INSERT INTO "orbs" VALUES(23,7,3);
INSERT INTO "orbs" VALUES(24,6,1);
INSERT INTO "orbs" VALUES(24,7,5);
INSERT INTO "orbs" VALUES(25,6,2);
INSERT INTO "orbs" VALUES(25,7,5);
INSERT INTO "orbs" VALUES(26,6,2);
INSERT INTO "orbs" VALUES(26,7,6);
INSERT INTO "orbs" VALUES(27,6,2);
INSERT INTO "orbs" VALUES(27,7,7);
INSERT INTO "orbs" VALUES(28,6,2);
INSERT INTO "orbs" VALUES(28,7,8);
INSERT INTO "orbs" VALUES(29,6,1);
INSERT INTO "orbs" VALUES(29,7,10);
INSERT INTO "orbs" VALUES(30,6,2);
INSERT INTO "orbs" VALUES(30,7,10);
INSERT INTO "orbs" VALUES(31,6,2);
INSERT INTO "orbs" VALUES(31,7,10);
INSERT INTO "orbs" VALUES(31,8,1);
INSERT INTO "orbs" VALUES(32,6,2);
INSERT INTO "orbs" VALUES(32,7,10);
INSERT INTO "orbs" VALUES(32,8,2);
INSERT INTO "orbs" VALUES(33,6,2);
INSERT INTO "orbs" VALUES(33,7,10);
INSERT INTO "orbs" VALUES(33,8,3);
INSERT INTO "orbs" VALUES(34,6,2);
INSERT INTO "orbs" VALUES(34,7,10);
INSERT INTO "orbs" VALUES(34,8,4);
INSERT INTO "orbs" VALUES(35,6,2);
INSERT INTO "orbs" VALUES(35,7,10);
INSERT INTO "orbs" VALUES(35,8,5);
INSERT INTO "orbs" VALUES(36,6,2);
INSERT INTO "orbs" VALUES(36,7,10);
INSERT INTO "orbs" VALUES(36,8,6);
INSERT INTO "orbs" VALUES(37,9,1);
INSERT INTO "orbs" VALUES(38,9,2);
INSERT INTO "orbs" VALUES(39,9,2);
INSERT INTO "orbs" VALUES(39,10,1);
INSERT INTO "orbs" VALUES(40,9,2);
INSERT INTO "orbs" VALUES(40,10,2);
INSERT INTO "orbs" VALUES(41,9,2);
INSERT INTO "orbs" VALUES(41,10,3);
INSERT INTO "orbs" VALUES(42,9,1);
INSERT INTO "orbs" VALUES(42,10,5);
INSERT INTO "orbs" VALUES(43,9,2);
INSERT INTO "orbs" VALUES(43,10,5);
INSERT INTO "orbs" VALUES(44,9,2);
INSERT INTO "orbs" VALUES(44,10,6);
INSERT INTO "orbs" VALUES(45,9,2);
INSERT INTO "orbs" VALUES(45,10,7);
INSERT INTO "orbs" VALUES(46,9,2);
INSERT INTO "orbs" VALUES(46,10,8);
INSERT INTO "orbs" VALUES(47,9,1);
INSERT INTO "orbs" VALUES(47,10,10);
INSERT INTO "orbs" VALUES(48,9,2);
INSERT INTO "orbs" VALUES(48,10,10);
INSERT INTO "orbs" VALUES(49,9,2);
INSERT INTO "orbs" VALUES(49,10,10);
INSERT INTO "orbs" VALUES(49,11,1);
INSERT INTO "orbs" VALUES(50,9,2);
INSERT INTO "orbs" VALUES(50,10,10);
INSERT INTO "orbs" VALUES(50,11,2);
INSERT INTO "orbs" VALUES(51,9,2);
INSERT INTO "orbs" VALUES(51,10,10);
INSERT INTO "orbs" VALUES(51,11,3);
INSERT INTO "orbs" VALUES(52,9,2);
INSERT INTO "orbs" VALUES(52,10,10);
INSERT INTO "orbs" VALUES(52,11,4);
INSERT INTO "orbs" VALUES(53,9,2);
INSERT INTO "orbs" VALUES(53,10,10);
INSERT INTO "orbs" VALUES(53,11,5);
INSERT INTO "orbs" VALUES(54,9,2);
INSERT INTO "orbs" VALUES(54,10,10);
INSERT INTO "orbs" VALUES(54,11,6);
INSERT INTO "orbs" VALUES(55,12,1);
INSERT INTO "orbs" VALUES(56,12,2);
INSERT INTO "orbs" VALUES(57,12,2);
INSERT INTO "orbs" VALUES(57,14,1);
INSERT INTO "orbs" VALUES(58,12,2);
INSERT INTO "orbs" VALUES(58,13,1);
INSERT INTO "orbs" VALUES(58,14,1);
INSERT INTO "orbs" VALUES(59,12,2);
INSERT INTO "orbs" VALUES(59,13,3);
INSERT INTO "orbs" VALUES(60,12,2);
INSERT INTO "orbs" VALUES(60,13,4);
INSERT INTO "orbs" VALUES(61,12,2);
INSERT INTO "orbs" VALUES(61,13,5);
INSERT INTO "orbs" VALUES(62,12,2);
INSERT INTO "orbs" VALUES(62,13,6);
INSERT INTO "orbs" VALUES(63,12,2);
INSERT INTO "orbs" VALUES(63,13,7);
INSERT INTO "orbs" VALUES(64,12,2);
INSERT INTO "orbs" VALUES(64,13,7);
INSERT INTO "orbs" VALUES(64,14,1);
INSERT INTO "orbs" VALUES(65,12,2);
INSERT INTO "orbs" VALUES(65,13,9);
INSERT INTO "orbs" VALUES(66,12,2);
INSERT INTO "orbs" VALUES(66,13,10);
INSERT INTO "orbs" VALUES(67,12,2);
INSERT INTO "orbs" VALUES(67,13,11);
INSERT INTO "orbs" VALUES(68,12,2);
INSERT INTO "orbs" VALUES(68,13,12);
INSERT INTO "orbs" VALUES(69,12,2);
INSERT INTO "orbs" VALUES(69,13,13);
INSERT INTO "orbs" VALUES(70,12,2);
INSERT INTO "orbs" VALUES(70,13,14);
INSERT INTO "orbs" VALUES(71,12,2);
INSERT INTO "orbs" VALUES(71,13,14);
INSERT INTO "orbs" VALUES(71,14,1);
INSERT INTO "orbs" VALUES(72,12,2);
INSERT INTO "orbs" VALUES(72,13,14);
INSERT INTO "orbs" VALUES(72,14,2);
INSERT INTO "orbs" VALUES(73,12,2);
INSERT INTO "orbs" VALUES(73,13,14);
INSERT INTO "orbs" VALUES(73,14,3);
INSERT INTO "orbs" VALUES(74,12,2);
INSERT INTO "orbs" VALUES(74,13,14);
INSERT INTO "orbs" VALUES(74,14,4);
INSERT INTO "orbs" VALUES(75,12,2);
INSERT INTO "orbs" VALUES(75,13,14);
INSERT INTO "orbs" VALUES(75,14,5);
INSERT INTO "orbs" VALUES(76,12,2);
INSERT INTO "orbs" VALUES(76,13,14);
INSERT INTO "orbs" VALUES(76,14,6);
INSERT INTO "orbs" VALUES(77,12,2);
INSERT INTO "orbs" VALUES(77,13,14);
INSERT INTO "orbs" VALUES(77,14,7);
INSERT INTO "orbs" VALUES(78,12,1);
INSERT INTO "orbs" VALUES(78,13,14);
INSERT INTO "orbs" VALUES(78,14,9);
INSERT INTO "orbs" VALUES(79,12,1);
INSERT INTO "orbs" VALUES(79,13,14);
INSERT INTO "orbs" VALUES(79,14,10);
INSERT INTO "orbs" VALUES(80,12,2);
INSERT INTO "orbs" VALUES(80,13,14);
INSERT INTO "orbs" VALUES(80,14,10);
INSERT INTO "orbs" VALUES(81,12,2);
INSERT INTO "orbs" VALUES(81,13,14);
INSERT INTO "orbs" VALUES(81,14,10);
INSERT INTO "orbs" VALUES(81,15,1);
INSERT INTO "orbs" VALUES(82,12,2);
INSERT INTO "orbs" VALUES(82,13,14);
INSERT INTO "orbs" VALUES(82,14,10);
INSERT INTO "orbs" VALUES(82,15,2);
INSERT INTO "orbs" VALUES(83,12,2);
INSERT INTO "orbs" VALUES(83,13,14);
INSERT INTO "orbs" VALUES(83,14,10);
INSERT INTO "orbs" VALUES(83,15,3);
INSERT INTO "orbs" VALUES(84,12,2);
INSERT INTO "orbs" VALUES(84,13,14);
INSERT INTO "orbs" VALUES(84,14,10);
INSERT INTO "orbs" VALUES(84,15,4);
INSERT INTO "orbs" VALUES(85,12,2);
INSERT INTO "orbs" VALUES(85,13,14);
INSERT INTO "orbs" VALUES(85,14,10);
INSERT INTO "orbs" VALUES(85,15,5);
INSERT INTO "orbs" VALUES(86,12,2);
INSERT INTO "orbs" VALUES(86,13,14);
INSERT INTO "orbs" VALUES(86,14,10);
INSERT INTO "orbs" VALUES(86,15,6);
INSERT INTO "orbs" VALUES(87,16,1);
INSERT INTO "orbs" VALUES(88,16,2);
INSERT INTO "orbs" VALUES(89,16,2);
INSERT INTO "orbs" VALUES(89,18,1);
INSERT INTO "orbs" VALUES(90,16,2);
INSERT INTO "orbs" VALUES(90,18,2);
INSERT INTO "orbs" VALUES(91,16,2);
INSERT INTO "orbs" VALUES(91,17,2);
INSERT INTO "orbs" VALUES(91,18,1);
INSERT INTO "orbs" VALUES(92,16,2);
INSERT INTO "orbs" VALUES(92,17,3);
INSERT INTO "orbs" VALUES(92,18,1);
INSERT INTO "orbs" VALUES(93,16,2);
INSERT INTO "orbs" VALUES(93,17,4);
INSERT INTO "orbs" VALUES(93,18,1);
INSERT INTO "orbs" VALUES(94,16,2);
INSERT INTO "orbs" VALUES(94,17,6);
INSERT INTO "orbs" VALUES(95,16,2);
INSERT INTO "orbs" VALUES(95,17,7);
INSERT INTO "orbs" VALUES(96,16,2);
INSERT INTO "orbs" VALUES(96,17,7);
INSERT INTO "orbs" VALUES(96,18,1);
INSERT INTO "orbs" VALUES(97,16,2);
INSERT INTO "orbs" VALUES(97,17,9);
INSERT INTO "orbs" VALUES(98,16,2);
INSERT INTO "orbs" VALUES(98,17,10);
INSERT INTO "orbs" VALUES(99,16,2);
INSERT INTO "orbs" VALUES(99,17,11);
INSERT INTO "orbs" VALUES(100,16,2);
INSERT INTO "orbs" VALUES(100,17,12);
INSERT INTO "orbs" VALUES(101,16,2);
INSERT INTO "orbs" VALUES(101,17,13);
INSERT INTO "orbs" VALUES(102,16,2);
INSERT INTO "orbs" VALUES(102,17,14);
INSERT INTO "orbs" VALUES(103,16,2);
INSERT INTO "orbs" VALUES(103,17,14);
INSERT INTO "orbs" VALUES(103,19,1);
INSERT INTO "orbs" VALUES(104,16,2);
INSERT INTO "orbs" VALUES(104,17,14);
INSERT INTO "orbs" VALUES(104,18,2);
INSERT INTO "orbs" VALUES(105,16,2);
INSERT INTO "orbs" VALUES(105,17,14);
INSERT INTO "orbs" VALUES(105,18,3);
INSERT INTO "orbs" VALUES(106,16,2);
INSERT INTO "orbs" VALUES(106,17,14);
INSERT INTO "orbs" VALUES(106,18,4);
INSERT INTO "orbs" VALUES(107,16,2);
INSERT INTO "orbs" VALUES(107,17,14);
INSERT INTO "orbs" VALUES(107,18,5);
INSERT INTO "orbs" VALUES(108,16,2);
INSERT INTO "orbs" VALUES(108,17,14);
INSERT INTO "orbs" VALUES(108,18,6);
INSERT INTO "orbs" VALUES(109,16,2);
INSERT INTO "orbs" VALUES(109,17,14);
INSERT INTO "orbs" VALUES(109,18,7);
INSERT INTO "orbs" VALUES(110,16,1);
INSERT INTO "orbs" VALUES(110,17,14);
INSERT INTO "orbs" VALUES(110,18,9);
INSERT INTO "orbs" VALUES(111,16,1);
INSERT INTO "orbs" VALUES(111,17,14);
INSERT INTO "orbs" VALUES(111,18,10);
INSERT INTO "orbs" VALUES(112,16,2);
INSERT INTO "orbs" VALUES(112,17,14);
INSERT INTO "orbs" VALUES(112,18,10);
INSERT INTO "orbs" VALUES(113,16,2);
INSERT INTO "orbs" VALUES(113,17,14);
INSERT INTO "orbs" VALUES(113,18,10);
INSERT INTO "orbs" VALUES(113,19,1);
INSERT INTO "orbs" VALUES(114,16,2);
INSERT INTO "orbs" VALUES(114,17,14);
INSERT INTO "orbs" VALUES(114,18,10);
INSERT INTO "orbs" VALUES(114,19,2);
INSERT INTO "orbs" VALUES(115,16,2);
INSERT INTO "orbs" VALUES(115,17,14);
INSERT INTO "orbs" VALUES(115,18,10);
INSERT INTO "orbs" VALUES(115,19,3);
INSERT INTO "orbs" VALUES(116,16,2);
INSERT INTO "orbs" VALUES(116,17,14);
INSERT INTO "orbs" VALUES(116,18,10);
INSERT INTO "orbs" VALUES(116,19,4);
INSERT INTO "orbs" VALUES(117,16,2);
INSERT INTO "orbs" VALUES(117,17,14);
INSERT INTO "orbs" VALUES(117,18,10);
INSERT INTO "orbs" VALUES(117,19,5);
INSERT INTO "orbs" VALUES(118,16,2);
INSERT INTO "orbs" VALUES(118,17,14);
INSERT INTO "orbs" VALUES(118,18,10);
INSERT INTO "orbs" VALUES(118,19,6);
