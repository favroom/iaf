---------------------------------------------------
--   CREATE TABLE IBISSTORE
---------------------------------------------------

CREATE TABLE IBISSTORE
(
MESSAGEKEY int identity,
TYPE CHAR(1),
SLOTID VARCHAR(100),
HOST VARCHAR(100),
MESSAGEID VARCHAR(100),
CORRELATIONID VARCHAR(256),
MESSAGEDATE datetime,
COMMENTS VARCHAR(1000),
MESSAGE varbinary(max),
EXPIRYDATE datetime,
LABEL VARCHAR(100),
CONSTRAINT PK_IBISSTORE PRIMARY KEY (MESSAGEKEY)
);

CREATE INDEX IX_IBISSTORE ON IBISSTORE (TYPE, SLOTID, MESSAGEDATE);
CREATE INDEX IX_IBISSTORE_02 ON IBISSTORE (EXPIRYDATE);


---------------------------------------------------
--   CREATE TABLE IBISPROP
---------------------------------------------------

CREATE TABLE IBISPROP(
  NAME           VARCHAR(100) NOT NULL,
  VALUE          VARCHAR(100),
  LASTMODDATE    datetime,
  LASTMODBY      VARCHAR(32),
CONSTRAINT PK_IBISPROP PRIMARY KEY (NAME)
);