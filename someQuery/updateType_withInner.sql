Update [IFRS9_Vault].[dbo].[IndImpCOL]
Set  [Type] = b.[CollateralDescr] 
From [IFRS9_Vault].[dbo].[ColDescr] as b 
Inner Join [IFRS9_Vault].[dbo].[IndImpCOL] as a 
    On a.CollateralID = b.CollateralID