-- Create petPet table
CREATE TABLE petPet (
    petname VARCHAR(20) PRIMARY KEY,
    owner VARCHAR(45) NOT NULL,
    species CHAR(1) CHECK (species IN ('M', 'F')),
    gender VARCHAR(15),
    birth DATE,
    death DATE
);

-- Create petEvent table
CREATE TABLE petEvent (
    petname VARCHAR(20),
    eventdate DATE NOT NULL,
    eventtype VARCHAR(15) NOT NULL,
    remark VARCHAR(255),
    -- Set petname in petEvent as a foreign key referring to petname in petPet
    FOREIGN KEY (petname) REFERENCES petPet(petname),
    -- Define primary key (consider petname and eventdate as a composite key)
    PRIMARY KEY (petname, eventdate)
);
