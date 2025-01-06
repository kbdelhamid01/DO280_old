-- Create the 'city' table
CREATE TABLE city (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    CountryCode CHAR(3) NOT NULL,
    District VARCHAR(255) NOT NULL,
    Population INT NOT NULL
);

-- Create the 'country' table
CREATE TABLE country (
    Code CHAR(3) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Continent ENUM('Asia', 'Europe', 'North America', 'Africa', 'Oceania', 'Antarctica', 'South America') NOT NULL,
    Region VARCHAR(255) NOT NULL,
    SurfaceArea FLOAT NOT NULL,
    IndependenceYear SMALLINT,
    Population INT NOT NULL,
    LifeExpectancy FLOAT,
    GNP FLOAT,
    GNPOld FLOAT,
    LocalName VARCHAR(255) NOT NULL,
    GovernmentForm VARCHAR(255) NOT NULL,
    HeadOfState VARCHAR(255),
    Capital INT,
    Code2 CHAR(2) NOT NULL
);

-- Create the 'countryinfo' table
CREATE TABLE countryinfo (
    CountryCode CHAR(3) PRIMARY KEY,
    JSONData JSON NOT NULL
);

-- Create the 'countrylanguage' table
CREATE TABLE countrylanguage (
    CountryCode CHAR(3) NOT NULL,
    Language VARCHAR(255) NOT NULL,
    IsOfficial ENUM('T', 'F') NOT NULL,
    Percentage FLOAT NOT NULL,
    PRIMARY KEY (CountryCode, Language)
);
