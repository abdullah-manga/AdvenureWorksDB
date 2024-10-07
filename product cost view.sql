CREATE VIEW vw_productcost AS
SELECT 
    P.ProductID,
    P.Name AS ProductName,
    P.StandardCost,
    PV.StandardPrice,
    CASE 
        WHEN P.StandardCost > 0 THEN P.StandardCost
        WHEN PV.StandardPrice > 0 THEN PV.StandardPrice
        ELSE 0
    END AS EffectiveCost
FROM 
    Production.Product P
LEFT JOIN 
    Purchasing.ProductVendor PV ON P.ProductID = PV.ProductID
WHERE 
    NOT (P.StandardCost = 0 AND (PV.StandardPrice IS NULL OR PV.StandardPrice = 0))