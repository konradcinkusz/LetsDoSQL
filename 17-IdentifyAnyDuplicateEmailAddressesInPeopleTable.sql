--(17.Advance)Find people with the same email. In Application.People select
--any EmailAddress that appears more than once

SELECT PersonID, FullName, EmailAddress
FROM Application.People
Where EmailAddress IN (
	Select EmailAddress
	FROM Application.People
	GROUP BY EmailAddress
	Having COUNT(*) > 1
);