CREATE TABLE Sales.CountryCodes (
    CountryCode VARCHAR(2) PRIMARY KEY,
    CountryName VARCHAR(50)
);

INSERT INTO Sales.CountryCodes (CountryCode, CountryName)
VALUES
    ('US', 'United States'),
    ('CA', 'Canada'),
    ('FR', 'France'),
    ('DE', 'Germany'),
    ('AU', 'Australia'),
    ('GB', 'United Kingdom');
