CREATE TABLE P_AFFLIATE_LEADS
(
 ROW_ID						    BIGINT IDENTITY(1,1) NOT NULL
,CREATED						DATETIME
,CREATED_BY						BIGINT
,LAST_UPDATED					DATETIME
,LAST_UPDATED_BY				BIGINT

,AFFILIATE_ID					BIGINT
,NAME							NVARCHAR(100)
,PHONE_NO						NVARCHAR(20)
,MOBILE_NO						NVARCHAR(20)
,EMAIL							NVARCHAR(150)
,REMARKS						NVARCHAR(500)
,RATING							INT

,STATUS							INT

CONSTRAINT P_AFFLIATE_LEADS_P01 PRIMARY KEY CLUSTERED 
(
	ROW_ID
)

CONSTRAINT P_AFFLIATE_LEADS_F01 FOREIGN KEY (AFFILIATE_ID) REFERENCES P_USER(ROW_ID),
)