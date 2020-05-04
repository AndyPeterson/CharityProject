/**
* I am a new Model Object
*/
component accessors="true"{
	
	// Properties
	
    ContactService function init(){
        variables.data = [
            { id=1, name="coldbox" },
            { id=2, name="superman" },
            { id=3, name="batman" }
        ];    
        return this;

	/**
	 * Constructor
	 */
	AmbassadorService function init(){
		
		return this;
	}
	
any function index( event, rc, prc ){
    prc.aContacts = contactService.getAll();
    event.setView( "contacts/index" );
}


	/**
	* insertAmbassador
	*/
	function insertAmbassador(){

		InsertAmbassador = queryExecute(
				"INSERT INTO SECA_Ambassadors (AgencyUniversityName, FirstName, LastName, Email)
				VALUES (:myid, :myid2, :myid3, :myid4) ", 
				{myid: 'test', 
				myid2: 'Andrew', 
				myid3: 'Peterson', 
				myid4: 'soulembraced@gmail.com'},                         
				{datasource = "general"} 
				);
		
	}

	function getAll(){

		getA = queryExecute(
				"SELECT AgencyUniversityName, FirstName, LastName, Email 
				,            
				{datasource = "general"} 
				);

		return getA;
	}


}