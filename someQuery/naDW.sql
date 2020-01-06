insert into [IFRS9_Vault].[dbo].[IndImpCF] 
Select  NEWID(),'1','1','21',0,NULL,
[PaymentAmountLC],NULL,NULL,NULL,NULL,NULL,NULL,[UDFA01],[UDFA02],[UDFA03],
[UDFA04],[UDFA05],[UDFA06],[UDFA07],[UDFA08],[UDFA09],[UDFA10],[UDFN01],
[UDFN02],[UDFN03],[UDFN04],[UDFN05],[UDFN06],[UDFN07],[UDFN08],[UDFN09],
[UDFN10],[UDFF01],[UDFF02],[UDFF03],[UDFF04],[UDFF05],[UDFF06],[UDFF07],[UDFF08],
[UDFF09],[UDFF10],[CRDATE],[LMDATE],[RECHID] ,'026CBIL123250027',NULL,NULL,NULL,NULL,
[PaymentDueDate] FROM [IFRS9_Vault].[dbo].[LNPSCH]
where [SnapshotDate]='2017/12/29' and [FacilityID]='026CBIL123250027'
order by [PaymentDueDate]

  --Select [HeadKey] from [IFRS9_Vault].[dbo].[IndImpMst] where HeadKey=1
  -- and LineKey =1and IndImpKey= 21 and FacilityID= '026CBIL123250027'