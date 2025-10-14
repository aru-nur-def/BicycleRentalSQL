CREATE TABLE ServiceBook (
    BicycleId INT NOT NULL,
    DetailId INT NOT NULL,
    Date DATE NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    StaffId INT NOT NULL,
    FOREIGN KEY (BicycleId) REFERENCES Bicycle(Id),
    FOREIGN KEY (DetailId) REFERENCES Detail(Id),
    FOREIGN KEY (StaffId) REFERENCES Staff(Id)
);

CREATE TABLE RentBook (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE NOT NULL,
    Time INT NOT NULL CHECK (Time > 0),
    Paid BIT NOT NULL,
    BicycleId INT NOT NULL,
    ClientId INT NOT NULL,
    StaffId INT NOT NULL,
    FOREIGN KEY (BicycleId) REFERENCES Bicycle(Id),
    FOREIGN KEY (ClientId) REFERENCES Client(Id),
    FOREIGN KEY (StaffId) REFERENCES Staff(Id)
);
