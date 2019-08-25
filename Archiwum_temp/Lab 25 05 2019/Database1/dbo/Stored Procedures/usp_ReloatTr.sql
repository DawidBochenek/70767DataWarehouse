CREATE PROCEDURE usp_ReloatTr
AS
BEGIN 

DELETE dest
FROM
[Production].[TransactionHistory] as dest
INNER JOIN [Production].[TransactionHistory_TEMP] as temp
on dest.TransactionID = temp.TransactionID
;
-- krok #2 przerzucanie danych

INSERT INTO [Production].[TransactionHistory]
(
	[TransactionID],
	[ProductID],
	[ReferenceOrderID],
	[ReferenceOrderLineID],
	[TransactionDate] ,
	[TransactionType],
	[Quantity],
	[ActualCost],
	[ModifiedDate]
	)
	select *

	FROM [Production].[TransactionHistory_TEMP] 
	;
	END