# Check email SendEmail fail
SELECT * FROM [x_data].[dbo].[SendEmail]
  where id=''
 ---- where InvToken='|'
  order by CreateDate desc
# Check email Customer
SELECT *  FROM [x_data].[dbo].[Customer]
  where Code ='xx'