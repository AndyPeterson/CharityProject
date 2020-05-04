<cfoutput>
<h1>SECAAmbassadors.create</h1>

<cfquery datasource="General" name="insert">
INSERT INTO SECA_Ambassadors (AgencyUniversityName, FirstName, LastName, Email)
VALUES ('test', 'andy', 'peterson', 'andy.peterson@illinoiscomptroller.gov')
</cfquery>

<cfscript>
InsertAmbassador = queryExecute(
		"INSERT INTO SECA_Ambassadors (AgencyUniversityName, FirstName, LastName, Email)
		VALUES (:myid, :myid2, :myid3, :myid4) ", 
		{myid: 'test', 
		myid2: 'Andrew', 
		myid3: 'Peterson', 
		myid4: 'soulembraced@gmail.com'},                         
		{datasource = "general"} 
		);
</cfscript>
</cfoutput>