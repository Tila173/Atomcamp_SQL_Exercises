-- Query 1: List the names of all pet owners along with the names of their pets.
SELECT * FROM atom.pets;
SELECT petowners.name AS OwnerName, pets.name AS PetName
FROM petowners
JOIN Pets ON PetOwners.OwnerID = Pets.OwnerID;

-- Query 2: List all pets and their owner names, including pets that don't have recorded owners.
SELECT Pets.Name AS PetName, PetOwners.Name AS OwnerName
FROM Pets
LEFT JOIN PetOwners ON Pets.OwnerID = PetOwners.OwnerID;

-- Query 3: Combine the information of pets and their owners, including those pets without owners and owners without pets.
SELECT Pets.Name AS PetName, PetOwners.Name AS OwnerName
FROM Pets
LEFT JOIN PetOwners ON Pets.OwnerID = PetOwners.OwnerID
UNION
SELECT Pets.Name AS PetName, PetOwners.Name AS OwnerName
FROM PetOwners
LEFT JOIN Pets ON PetOwners.OwnerID = Pets.OwnerID
WHERE pets.ownerid IS NULL;

-- Query 4: List all pet owners and the number of dogs they own.
SELECT PetOwners.OName, COUNT(Pets.PetID) AS NumberOfDogs
FROM PetOwners
LEFT JOIN Pets ON PetOwners.OwnerID = Pets.OwnerID
WHERE Pets.Kind = 'Dog'
GROUP BY PetOwners.Name;

-- Query 5: Identify pets that have not had any procedures.
SELECT p.Pedid, p.name
FROM Pets p
LEFT JOIN ProceduresHistory ph ON p.Petid = ph.Petid
WHERE ph.Pedid IS NULL;

-- Query 6: Find the name of the oldest pet.
SELECT Name
FROM Pets
ORDER BY age DESC
LIMIT 1;

-- Query 7: Find the details of procedures performed on 'Cuddles'.
SELECT * FROM atom.proceduresdetails;
SELECT p.name AS PetName, ph.date, pd.ProcedureType, pd.ProcedureSubCode, pd.Description, pd.Price
FROM pets p
JOIN procedureshistory ph ON p.Petid = ph.Petid
JOIN proceduresdetails pd ON ph.proceduretype = pd.ProcedureType AND ph.proceduresubcode = pd.ProcedureSubCode
WHERE p.Name = 'Cuddles';

-- Query 8: List the pets who have undergone a procedure called 'VACCINATIONS'.
SELECT * FROM atom.procedureshistory;
SELECT p.Name AS PetName
FROM pets p
JOIN procedureshistory ph ON p.Petid = ph.Petid
JOIN proceduresdetails pd ON ph.proceduretype = pd.ProcedureType AND ph.proceduresubcode = pd.ProcedureSubCode
WHERE pd.ProcedureType = 'VACCINATIONS';

-- Query 9: Count the number of pets of each kind.
SELECT Kind, COUNT(*) AS NumberOfPets
FROM pets
GROUP BY Kind;

-- Query 10: Group pets by their kind and gender and count the number of pets in each group.
SELECT kind, gender, COUNT(*) AS NumberOfPets
FROM pets
GROUP BY kind, gender;

-- Query 11: Show the average age of pets for each kind, but only for kinds that have more than 5 pets.
SELECT kind, AVG(age) AS AverageAge
FROM pets
GROUP BY kind
HAVING COUNT(Petid) > 5;

-- Query 12: Find the types of procedures that have an average cost greater than $50.
SELECT ProcedureType, AVG(Price) AS AverageCost
FROM proceduresdetails
GROUP BY ProcedureType
HAVING AVG(Price) > 50;

-- Query 13: Classify pets as 'Young', 'Adult', or 'Senior' based on their age.
SELECT name, 
	   CASE
		   WHEN age < 3 THEN 'Young'
		   WHEN age BETWEEN 3 AND 8 THEN 'Adult'
		   ELSE 'Senior'
	   END AS AgeGroup
FROM pets;

-- Query 14: Show the gender of pets with a custom label ('Boy' for male, 'Girl' for female).
SELECT name, 
		CASE
			WHEN gender = 'Male' THEN 'Boy'
			WHEN gender = 'Female' THEN 'Girl'
            ELSE 'Unknown'
		END AS GenderLabel
FROM pets;

-- Query 15: For each pet, display the pet's name, the number of procedures they've had, and a status label.
SELECT p.name AS PetName,
		COUNT(ph.Petid) AS NumberOfProcedures, 
        CASE
			WHEN COUNT(ph.Petid) BETWEEN 1 AND 3 THEN 'Regular'
			WHEN COUNT(ph.Petid) BETWEEN 4 AND 7 THEN 'Frequent'
			WHEN COUNT(ph.Petid) > 7 THEN 'Super User'
            ELSE 'None'
		END AS StatusLabel
FROM pets p
LEFT JOIN procedureshistory ph ON p.Petid = ph.Petid
GROUP BY p.name;