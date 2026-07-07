
## Question No. 1

1. ADD RECORD

```sql
CREATE PROCEDURE dbo.usp_User_Add
    @UserName VARCHAR(20),
    @UserNo INT
AS
BEGIN
    INSERT INTO tbUser (UserName, UserNo)
    VALUES (@UserName, @UserNo);
END
GO
````

2. SELECT RECORDS

```sql
CREATE PROCEDURE dbo.usp_User_GetAll
AS
BEGIN
    SELECT UserID, UserName, UserNo, CreateDate 
    FROM tbUser;
END
GO
```

3. UPDATE RECORD

```sql
CREATE PROCEDURE dbo.usp_User_Update
    @UserID BIGINT,
    @UserName VARCHAR(20),
    @UserNo INT
AS
BEGIN
    UPDATE tbUser
    SET UserName = @UserName,
        UserNo = @UserNo
    WHERE UserID = @UserID;
END
GO
```

4. DELETE RECORD

```sql
CREATE PROCEDURE dbo.usp_User_Delete
    @UserID BIGINT
AS
BEGIN
    DELETE FROM tbUser
    WHERE UserID = @UserID;
END
GO
```

---

# Question No. 2

**Answer:** Refer page `Register.aspx`

---

# Question No. 3

**Answer:** Refer page `ManageUsers.aspx.cs`

---

# Question No. 4

**Answer:** Refer page `ManageUsers.aspx.cs`, Line 12

---

# Question No. 5

```sql
BACKUP DATABASE UserAssessmentDB
TO DISK = 'C:\Backup\UserAssessmentDB.bak'
WITH INIT;
```
