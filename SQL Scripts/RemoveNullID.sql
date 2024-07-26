DELETE FROM [KoreAssignment_{Rohit_Bassi}].[stg].[Users]
WHERE [UserID] IS NULL OR [StgID] NOT IN
(
	SELECT MIN(StgID)
	FROM [KoreAssignment_{Rohit_Bassi}].[stg].[Users]
	GROUP BY [UserID], [FullName], [Age], [Email], [RegistrationDate], [LastLoginDate], [PurchaseTotal]
);