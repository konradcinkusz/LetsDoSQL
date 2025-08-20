--(2.Beginner)Retrive the full names and email addresses of all people who are 
--employees and are designated as salespeople

SELECT FullName, EmailAddress
FROM Application.People
WHERE IsEmployee = 1 AND IsSalesperson = 1;