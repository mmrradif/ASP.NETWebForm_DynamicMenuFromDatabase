CREATE DATABASE aspProject
GO


USE aspProject
GO

CREATE TABLE tblRole(
	roleId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	roleName NVARCHAR(150) NOT NULL
)
GO

INSERT INTO tblRole(roleName) VALUES
('admin'),
('user'),
('unRegisteredUser'),
('Employee')
GO


SELECT * FROM tblRole
GO


CREATE TABLE signUp(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	name NVARCHAR(100) NOT NULL,
	userName NVARCHAR(100) NOT NULL,
	userPassword NVARCHAR(100) NOT NULL,
	userEmail NVARCHAR(100) NOT NULL,
	RoleId INT NOT NULL REFERENCES tblRole(roleId)
)
GO

INSERT INTO signUp(name,userName,userPassword,userEmail,RoleId) VALUES
('Mahbur','mahbur','mahbur','mahbur@gmail.com',1),
('Radif','radif','radif','radif@gmail.com',2),
('Rayhan','rayhan','rayhan','rayjan@gmail.com',4)
GO

SELECT * FROM signUp
GO


--CREATE TABLE tblMenuType(	
--	parentID INT NOT NULL PRIMARY KEY,
--	typeName NVARCHAR(100) NOT NULL
--)

--INSERT INTO tblMenuType(parentID,typeName) VALUES
--(0,'Main Menu')
--GO

--DROP TABLE tblDynamicMenu

CREATE TABLE tblDynamicMenu(	
	menuId INT NOT NULL IDENTITY(1,1),	
	menuName NVARCHAR(50) NULL,
	menulocation NVARCHAR(MAX) NULL,
	parentId INT NOT NULL,
	roleid INT NOT NULL REFERENCES tblRole(roleId),
	PRIMARY KEY(roleid,menuId)
)
GO


INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Home','frmHome.aspx',0,1),
('Products','',0,1),
('Employee','',0,1),
('Customize Menu','frmAdminDashBoard.aspx',0,1)
GO

SELECT * FROM tblDynamicMenu
GO

INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Men','',2,1),
('Owmen','',2,1),
('Add Products','',3,1),
('Add Employee','',3,1)
GO







INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Home','frmHome.aspx',0,2),
('Products','',0,2),
('Cart','',0,2)
GO

INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Men','',10,2),
('Owmen','',10,2)
GO



INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Home','frmHome.aspx',0,3),
('Product','',0,3)
GO

INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Men','',15,3),
('OWomen','',15,3)
GO


INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Home','frmHome.aspx',0,4),
('Products','',0,4),
('Employee','',0,4)
GO

INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Men','',19,4),
('Owmen','',19,4),
('Add Products','',19,4)
GO




SELECT * FROM tblDynamicMenu 



CREATE TABLE tblDynamicMenu2(
	menuId INT NOT NULL IDENTITY(1,1),	
	menuName NVARCHAR(50) NULL,
	menulocation NVARCHAR(MAX) NULL,
	parentId INT NULL,
	roleid INT NOT NULL REFERENCES tblRole(roleId),
	PRIMARY KEY(roleid,menuId)
)
GO



INSERT INTO tblDynamicMenu2(menuName,menulocation,parentId,roleid)
VALUES
('Register','frmRegister.aspx',0,3),
('Login','frmLogin.aspx',0,3),
('Logout','',0,1),
('Logout','',0,2),
('Logout','',0,4)
GO










INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Men','',2,1),
('Women','',2,1)
GO

INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Kids','',2,1),
('Old','',2,1)
GO

INSERT INTO tblDynamicMenu(menuName,menulocation,parentId,roleid)
VALUES
('Men','',2,2),
('Women','',2,2)
GO

SELECT * FROM tblRole
GO

SELECT * FROM tblDynamicMenu
GO

SELECT * FROM tblDynamicMenu WHERE roleid = 1
GO

SELECT * FROM tblDynamicMenu WHERE roleid = 2
GO

SELECT d.menuId,d.menulocation,d.menuName,d.parentId,d.roleid,r.roleId,r.roleName FROM tblDynamicMenu d INNER JOIN tblRole r ON d.roleid = r.roleId


SELECT s.id,s.name,s.RoleId,s.userEmail,s.userName,s.userPassword,r.roleId,r.roleName FROM signUp s INNER JOIN tblRole r ON s.RoleId=r.roleId WHERE S.RoleId=4


SELECT dm.menuId,dm.menulocation,dm.menuName,dm.parentId,dm.roleid,r.roleId,r.roleName FROM tblDynamicMenu dm INNER JOIN tblRole r ON dm.roleid=r.roleId WHERE dm.roleid=1 AND parentId > 0