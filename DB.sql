- Create user on database and grant privileges in table
GRANT Database Permissions select, update
use use dbtest
go
create login usertest with password='11111';
create user usertest for login usertest;
grant connect to usertest;
grant select on customer to usertest;
grant select, update on echeck to usertest;
grant select, update on halfbill to usertest;

# GRANT  Permissions all select in databse
grant select on schema :: [dbo]  to usertest;

# Check Permissions for select table 
exec as login = 'usertest' select * from sysuser revert

# Revoke Permissions
REVOKE SELECT  on schema :: [dbo] to usertest;

# Deny connect select table
DENY SELECT ON OBJECT::sysuser TO testuser;

# Denying EXECUTE permission on a stored procedure
The following example denies EXECUTE permission on the stored procedure HumanResources.uspUpdateEmployeeHireInfo to an application role called Recruiting11.

DENY EXECUTE ON OBJECT::HumanResources.uspUpdateEmployeeHireInfo  
    TO Recruiting11;  
GO   

# Drop user on database
use dbtest
go
drop user test

- sp_addlinkedserver
use master
go
EXEC sp_addlinkedserver '192.168.x.x', N'SQL Server'
go
EXEC sp_addlinkedsrvlogin '192.168.x.x'','false',NULL,'demo','40rgP1912'
go
If use name, need edit file host


# Check email SendEmail fail
SELECT * FROM [x_data].[dbo].[SendEmail]
  where id=''
 ---- where InvToken='|'
  order by CreateDate desc
# Check email Customer
SELECT *  FROM [x_data].[dbo].[Customer]
  where Code ='xx'


