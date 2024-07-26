UPDATE  [KoreAssignment_{Rohit_Bassi}].[prod].[Users]
SET 
    [FullName] = ?,
    [Age] = ?,
    [Email] = ?,
    [RegistrationDate] = ?,
    [LastLoginDate] = ?,
    [PurchaseTotal] = ?
WHERE
    [UserID] = ?