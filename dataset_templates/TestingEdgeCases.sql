-- A table without a primary key
CREATE TABLE NoPrimaryKey (
  [FirstName] VARCHAR(40) NOT NULL,
  [LastName] VARCHAR(40) NOT NULL
);

INSERT INTO NoPrimaryKey ([FirstName], [LastName]) VALUES ('Jean-Luc', 'Picard');
INSERT INTO NoPrimaryKey ([FirstName], [LastName]) VALUES ('Will', 'Riker');
INSERT INTO NoPrimaryKey ([FirstName], [LastName]) VALUES ('Geordi', 'La Forge');
INSERT INTO NoPrimaryKey ([FirstName], [LastName]) VALUES ('Deanna', 'Troi');
INSERT INTO NoPrimaryKey ([FirstName], [LastName]) VALUES ('Beverly', 'Crusher');


-- A table with a PK that can be fulfilled by a default value
CREATE TABLE DefaultedPrimaryKey (
  [TimestampKey] DATETIME PRIMARY KEY DEFAULT CURRENT_TIMESTAMP,
  [Message] VARCHAR(255)
);

INSERT INTO DefaultedPrimaryKey ([TimestampKey], [Message]) VALUES ('2023-02-13 12:23:00', 'Message 1');
INSERT INTO DefaultedPrimaryKey ([TimestampKey], [Message]) VALUES ('2023-02-13 13:12:01', 'Message 2');
INSERT INTO DefaultedPrimaryKey ([TimestampKey], [Message]) VALUES ('2023-02-13 16:54:02', 'Message 3');
INSERT INTO DefaultedPrimaryKey ([TimestampKey], [Message]) VALUES ('2023-02-13 17:31:03', 'Message 4');

-- A table where all columns can be generated by the database
-- via defaults, autoincrementing, or nullability
CREATE TABLE AllColumnsDefaultable (
  [Id] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  [Message] VARCHAR(255),
  [Importance] INT DEFAULT 100
);

INSERT INTO AllColumnsDefaultable ([Message]) VALUES ('Message 1');
INSERT INTO AllColumnsDefaultable ([Message], [Importance]) VALUES ('Message 2', 200);
INSERT INTO AllColumnsDefaultable ([Message], [Importance]) VALUES ('Message 3', 50);
