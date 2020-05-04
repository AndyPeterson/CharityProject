<h1>My Custom Module</h1>

<cfquery datasource="General2" name="getAmbassadors">
select * from seca_ambassadors
</cfquery>

<cfdump var="#getAmbassadors#">