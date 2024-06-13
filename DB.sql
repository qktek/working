# Check email SendEmail fail
SELECT * FROM [haicatphu_data].[dbo].[SendEmail]
  where id=''
 ---- where InvToken='|'
  order by CreateDate desc
# Check email Customer
SELECT *  FROM [haicatphu_data].[dbo].[Customer]
  where Code ='xx'