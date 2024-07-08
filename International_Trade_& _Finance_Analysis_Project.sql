-- Data Cleaning, Transformation and Loading using MS SQL Server:
-- 1. Changed the values for the fields in all the tables that has ".." in its row with "NULL" to maintain the integrity of the numerical data
-- 2. Changed the data type of thise fields that are of the wrong data type to the right data type.
-- 3. Made sure that all the data types of the 5 tables in the dataset are of the right data type.

SELECT * FROM `exports_and_imports_( of gdp)`;
SELECT * FROM `foreign_direct_investment_net_inflows_( of gdp)`;
SELECT * FROM `net_official_development_assistance_received_( of gni)`;
SELECT * FROM `private_capital_flows_( of gdp)`;
SELECT * FROM `remittances_inflows_( of gdp)`;

-- 1. Change the values for the fields in all the tables that has ".." in its row with "NULL" to maintain the integrity of the numerical data
--    a. Exports and Imports (of GDP)
SELECT * FROM `exports_and_imports_( of gdp)`;

UPDATE `exports_and_imports_( of gdp)`
SET `1990`= NULL
WHERE `1990` = '..';

UPDATE `exports_and_imports_( of gdp)`
SET `1995`= NULL
WHERE `1995` = '..';

UPDATE `exports_and_imports_( of gdp)`
SET `2000`= NULL
WHERE `2000` = '..';

UPDATE `exports_and_imports_( of gdp)`
SET `2005`= NULL
WHERE `2005` = '..';

UPDATE `exports_and_imports_( of gdp)`
SET `2017`= NULL
WHERE `2017` = '..';

UPDATE `exports_and_imports_( of gdp)`
SET `2018`= NULL
WHERE `2018` = '..';

UPDATE `exports_and_imports_( of gdp)`
SET `2019`= NULL
WHERE `2019` = '..';

SELECT * FROM `exports_and_imports_( of gdp)`;

--    b. Foreign Direct Investment Net Inflows (of GDP)
SELECT * FROM `foreign_direct_investment_net_inflows_( of gdp)`;

UPDATE `foreign_direct_investment_net_inflows_( of gdp)`
SET `1990`= NULL
WHERE `1990` = '..';

UPDATE `foreign_direct_investment_net_inflows_( of gdp)`
SET `1995`= NULL
WHERE `1995` = '..';

UPDATE `foreign_direct_investment_net_inflows_( of gdp)`
SET `2000`= NULL
WHERE `2000` = '..';

UPDATE `foreign_direct_investment_net_inflows_( of gdp)`
SET `2019`= NULL
WHERE `2019` = '..';

SELECT * FROM `foreign_direct_investment_net_inflows_( of gdp)`;

--    c. Net Official Development Assistance Received (of GNI)
SELECT * FROM `net_official_development_assistance_received_( of gni)`;

UPDATE `net_official_development_assistance_received_( of gni)`
SET `1990`= NULL
WHERE `1990` = '..';

UPDATE `net_official_development_assistance_received_( of gni)`
SET `1995`= NULL
WHERE `1995` = '..';

UPDATE `net_official_development_assistance_received_( of gni)`
SET `2000`= NULL
WHERE `2000` = '..';

UPDATE `net_official_development_assistance_received_( of gni)`
SET `2005`= NULL
WHERE `2005` = '..';

SELECT * FROM `net_official_development_assistance_received_( of gni)`;

--    d. Private Capital Flows (of GDP)
SELECT * FROM `private_capital_flows_( of gdp)`;

UPDATE `private_capital_flows_( of gdp)`
SET `1990`= NULL
WHERE `1990` = '..';

UPDATE `private_capital_flows_( of gdp)`
SET `1995`= NULL
WHERE `1995` = '..';

UPDATE `private_capital_flows_( of gdp)`
SET `2000`= NULL
WHERE `2000` = '..';

UPDATE `private_capital_flows_( of gdp)`
SET `2005`= NULL
WHERE `2005` = '..';

UPDATE `private_capital_flows_( of gdp)`
SET `2012`= NULL
WHERE `2012` = '..';

UPDATE `private_capital_flows_( of gdp)`
SET `2013`= NULL
WHERE `2013` = '..';

UPDATE `private_capital_flows_( of gdp)`
SET `2014`= NULL
WHERE `2014` = '..';

UPDATE `private_capital_flows_( of gdp)`
SET `2015`= NULL
WHERE `2015` = '..';

UPDATE `private_capital_flows_( of gdp)`
SET `2016`= NULL
WHERE `2016` = '..';

UPDATE `private_capital_flows_( of gdp)`
SET `2017`= NULL
WHERE `2017` = '..';

UPDATE `private_capital_flows_( of gdp)`
SET `2018`= NULL
WHERE `2018` = '..';

UPDATE `private_capital_flows_( of gdp)`
SET `2019`= NULL
WHERE `2019` = '..';

SELECT * FROM `private_capital_flows_( of gdp)`;

--    e. Remittance Inflows (of GDP)
SELECT * FROM `remittances_inflows_( of gdp)`;

UPDATE `remittances_inflows_( of gdp)`
SET `1990`= NULL
WHERE `1990` = '..';

UPDATE `remittances_inflows_( of gdp)`
SET `1995`= NULL
WHERE `1995` = '..';

UPDATE `remittances_inflows_( of gdp)`
SET `2000`= NULL
WHERE `2000` = '..';

UPDATE `remittances_inflows_( of gdp)`
SET `2005`= NULL
WHERE `2005` = '..';

SELECT * FROM `remittances_inflows_( of gdp)`;


-- 2. Changed the data type of thise fields that are of the wrong data type to the right data type.
--    a. Exports and Imports (of GDP)
ALTER TABLE `exports_and_imports_( of gdp)`
MODIFY COLUMN HDI_Rank INT,
MODIFY COLUMN Country TEXT,
MODIFY COLUMN `1990` FLOAT,
MODIFY COLUMN `1995` FLOAT,
MODIFY COLUMN `2000` FLOAT,
MODIFY COLUMN `2005` FLOAT,
MODIFY COLUMN `2010` FLOAT,
MODIFY COLUMN `2011` FLOAT,
MODIFY COLUMN `2012` FLOAT,
MODIFY COLUMN `2013` FLOAT,
MODIFY COLUMN `2014` FLOAT,
MODIFY COLUMN `2015` FLOAT,
MODIFY COLUMN `2016` FLOAT,
MODIFY COLUMN `2017` FLOAT,
MODIFY COLUMN `2018` FLOAT,
MODIFY COLUMN `2019` FLOAT;

SELECT * FROM `exports_and_imports_( of gdp)`;

--    b. Foreign Direct Investment Net Inflows (of GDP)
ALTER TABLE `foreign_direct_investment_net_inflows_( of gdp)`
MODIFY COLUMN HDI_Rank INT,
MODIFY COLUMN Country TEXT,
MODIFY COLUMN `1990` FLOAT,
MODIFY COLUMN `1995` FLOAT,
MODIFY COLUMN `2000` FLOAT,
MODIFY COLUMN `2005` FLOAT,
MODIFY COLUMN `2010` FLOAT,
MODIFY COLUMN `2011` FLOAT,
MODIFY COLUMN `2012` FLOAT,
MODIFY COLUMN `2013` FLOAT,
MODIFY COLUMN `2014` FLOAT,
MODIFY COLUMN `2015` FLOAT,
MODIFY COLUMN `2016` FLOAT,
MODIFY COLUMN `2017` FLOAT,
MODIFY COLUMN `2018` FLOAT,
MODIFY COLUMN `2019` FLOAT;

SELECT * FROM `foreign_direct_investment_net_inflows_( of gdp)`;

--    c. Net Official Development Assistance Received (of GNI)
ALTER TABLE `net_official_development_assistance_received_( of gni)`
MODIFY COLUMN HDI_Rank INT,
MODIFY COLUMN Country TEXT,
MODIFY COLUMN `1990` FLOAT,
MODIFY COLUMN `1995` FLOAT,
MODIFY COLUMN `2000` FLOAT,
MODIFY COLUMN `2005` FLOAT,
MODIFY COLUMN `2010` FLOAT,
MODIFY COLUMN `2011` FLOAT,
MODIFY COLUMN `2012` FLOAT,
MODIFY COLUMN `2013` FLOAT,
MODIFY COLUMN `2014` FLOAT,
MODIFY COLUMN `2015` FLOAT,
MODIFY COLUMN `2016` FLOAT,
MODIFY COLUMN `2017` FLOAT,
MODIFY COLUMN `2018` FLOAT;

SELECT * FROM `net_official_development_assistance_received_( of gni)`;

--    d. Private Capital Flows (of GDP)
ALTER TABLE `private_capital_flows_( of gdp)`
MODIFY COLUMN HDI_Rank INT,
MODIFY COLUMN Country TEXT,
MODIFY COLUMN `1990` FLOAT,
MODIFY COLUMN `1995` FLOAT,
MODIFY COLUMN `2000` FLOAT,
MODIFY COLUMN `2005` FLOAT,
MODIFY COLUMN `2010` FLOAT,
MODIFY COLUMN `2011` FLOAT,
MODIFY COLUMN `2012` FLOAT,
MODIFY COLUMN `2013` FLOAT,
MODIFY COLUMN `2014` FLOAT,
MODIFY COLUMN `2015` FLOAT,
MODIFY COLUMN `2016` FLOAT,
MODIFY COLUMN `2017` FLOAT,
MODIFY COLUMN `2018` FLOAT,
MODIFY COLUMN `2019` FLOAT;

SELECT * FROM `private_capital_flows_( of gdp)`;

--    e. Remittance Inflows (of GDP)
ALTER TABLE `remittances_inflows_( of gdp)`
MODIFY COLUMN HDI_Rank INT,
MODIFY COLUMN Country TEXT,
MODIFY COLUMN `1990` FLOAT,
MODIFY COLUMN `1995` FLOAT,
MODIFY COLUMN `2000` FLOAT,
MODIFY COLUMN `2005` FLOAT,
MODIFY COLUMN `2010` FLOAT,
MODIFY COLUMN `2011` FLOAT,
MODIFY COLUMN `2012` FLOAT,
MODIFY COLUMN `2013` FLOAT,
MODIFY COLUMN `2014` FLOAT,
MODIFY COLUMN `2015` FLOAT,
MODIFY COLUMN `2016` FLOAT,
MODIFY COLUMN `2017` FLOAT,
MODIFY COLUMN `2018` FLOAT,
MODIFY COLUMN `2019` FLOAT;

SELECT * FROM `remittances_inflows_( of gdp)`;

-- 3. Made sure that all the data types of the 5 tables in the dataset are of the right data type.
--    a. Exports and Imports (of GDP)
DESCRIBE `exports_and_imports_( of gdp)`;

--    b. Foreign Direct Investment Net Inflows (of GDP)
DESCRIBE `foreign_direct_investment_net_inflows_( of gdp)`;

--    c. Net Official Development Assistance Received (of GNI)
DESCRIBE `net_official_development_assistance_received_( of gni)`;

--    d. Private Capital Flows (of GDP)
DESCRIBE `private_capital_flows_( of gdp)`;

--    e. Remittance Inflows (of GDP)
DESCRIBE `remittances_inflows_( of gdp)`;