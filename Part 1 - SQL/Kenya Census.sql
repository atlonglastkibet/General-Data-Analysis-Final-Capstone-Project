-- Create Database 'Kenya_Census'
CREATE DATABASE Kenya_Census;

-- View Database
SHOW DATABASES;

DROP TABLE house_holds;
DROP TABLE crops;
DROP TABLE gender;
-- Create 'house_holds' table
CREATE TABLE house_holds(
    County VARCHAR(20) PRIMARY KEY, -- Set as primary key
    Population INT,
    NumberOfHouseholds INT,
    AverageHouseHoldSize float
);

-- Create 'gender' table
CREATE TABLE gender(
    County VARCHAR(20) PRIMARY KEY, -- Set as primary key
    Male INT,
    Female INT,
    Intersex INT,
    Total INT,
        FOREIGN KEY (County) REFERENCES house_holds(County)
        ON DELETE CASCADE
        ON UPDATE CASCADE -- Maintain consistency between tables
);
-- Create 'crops' table
CREATE TABLE crops(
    SubCounty VARCHAR(50) PRIMARY KEY, -- Set as primary key, acts as county
    Farming INT,
    Tea VARCHAR(50),
    Coffee VARCHAR(50),
    Avocado VARCHAR(50),
    Citrus VARCHAR(50),
    Mango VARCHAR(50),
    Coconut VARCHAR(50),
    Macadamia VARCHAR(50),
    Cashew_Nuts VARCHAR(50),
    Khat_Miraa VARCHAR(50),
    FOREIGN KEY (SubCounty) REFERENCES house_holds(County)
    ON DELETE CASCADE
    ON UPDATE CASCADE -- Maintains consistency
);
-- View tables
SHOW TABLES;

-- Insert data into the 'house_holds' table
INSERT INTO house_holds(County, Population, NumberOfHouseholds, AverageHouseHoldSize)
VALUES
    ('Kenya',	47213282,	12143913,	3.9),
    ('Mombasa',	1190987,	378422,	3.1),
    ('Kwale',	858748,	173176,	5),
    ('Kilifi',	1440958,	298472,	4.8),
    ('TanaRiver',	314710,	68242, 4.6),
    ('Lamu',	141909,	37963,	3.7),
    ('Taita/Taveta',	335747,	96429,	3.5),
    ('Garissa',	835482,	141394,	5.9),
    ('Wajir',	775302,	127932,	6.1);

-- Insert data into the 'gender' table
INSERT INTO gender(county, male, female, intersex, total)
VALUES
    ('Kenya',	47213282,	12143913,	3.9,	Total),
    ('Mombasa',	1190987,	378422,	3.1,	47564296),
    ('Kwale',	858748,	173176,	5,	1208333),
    ('Kilifi',	1440958,	298472,	4.8,	866820),
    ('TanaRiver',	314710,	68242,	4.6,	1453787),
    ('Lamu',	141909,	37963,	3.7,	315943),
    ('Taita/Taveta',	335747,	96429,	3.5,	143920),
    ('Garissa',	835482,	141394,	5.9,	340671),
    ('Wajir',	775302,	127932,	6.1,	841353);

-- Insert data into the 'crops' table
INSERT INTO crops(SubCounty, Farming, Tea, Coffee, Avocado, Citrus, Mango, Coconut, Macadamia, Cashew_Nuts, Khat_Miraa)
VALUES ('KENYA',	6354211,	476613,	478936,	966976,	177445,	796867,	90952,	195999	,61664,	134148),
        ('MOMBASA',	12497,	'NA',	'NA',	'NA',	'NA',	'NA',	1688,	'NA',	602,	'NA'),
        ('KWALE',	108074,	'NA',	'NA',	1063,	10053,	30272,	31954,	881,	22803,	'NA'),
        ('KILIFI',	161188,	'NA',	'NA',	'NA',	6808,	37519,	47561,	'NA',	27940,	'NA'),
        ('TANARIVER',	35094,	'NA',	'NA',	'NA',	1109,	6561,	2228,	'NA',	1691,	'NA'),
        ('LAMU',	18678,	'NA',	'NA',	'NA',	2742,	7423,	5017,	189,	8085,	'NA'),
        ('TAITA/TAVETA',	56920,	'NA',	'NA',	7963,	3284,	7171,	2504,	3650,	543,	'NA'),
        ('GARISSA',	47645,	'NA',	'NA',	'NA',	'NA',	1726,	'NA',	'NA',	'NA',	'NA'),
        ('WAJIR',	63433,	'NA',	'NA',	'NA',	'NA',	'NA',	'NA',	'NA',	'NA',	'NA');

SHOW TABLES;

SELECT * FROM house_holds;
SELECT * FROM gender;
SELECT * FROM crops;