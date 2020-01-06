
 Select   NEWID(),'1','1','25',Row_number()   
 OVER(  Order BY (Select [HeadKey] from [IFRS9_Vault].[dbo].[IndImpMst]
  where HeadKey= '1' and LineKey = '1'And IndImpKey= '25'
   And FacilityID= '025CBIM161260001')) as IndSubKey,NULL,[PaymentAmountLC],
   NULL,NULL,NULL,NULL,NULL,NULL,[UDFA01],[UDFA02],[UDFA03],[UDFA04],[UDFA05],[UDFA06],
   [UDFA07],[UDFA08],[UDFA09],[UDFA10],[UDFN01],[UDFN02],[UDFN03],[UDFN04],[UDFN05],[UDFN06]
   ,[UDFN07],[UDFN08],[UDFN09],[UDFN10],[UDFF01],[UDFF02],[UDFF03],[UDFF04],
   [UDFF05],[UDFF06],[UDFF07],[UDFF08],[UDFF09],[UDFF10],[CRDATE],[LMDATE],
   [RECHID] ,'025CBIM161260001',NULL,NULL,NULL,NULL,[PaymentDueDate]
    FROM [IFRS9_Vault].[dbo].[LNPSCH]where [SnapshotDate]='2017/12/29' 
and PaymentDueDate NOT IN (select [Date2] FROM [IFRS9_Vault].[dbo].[IndImpCF] 
 where HeadKey= '1' and LineKey = '1'And IndImpKey= '25' and [FacilityID]='025CBIM161260001 ' )
 order by PaymentDueDate
