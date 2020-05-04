/**
* I am a new handler
*/
component{
	
	// OPTIONAL HANDLER PROPERTIES
	this.prehandler_only 	= "";
	this.prehandler_except 	= "";
	this.posthandler_only 	= "";
	this.posthandler_except = "";
	this.aroundHandler_only = "";
	this.aroundHandler_except = "";
	// REST Allowed HTTP Methods Ex: this.allowedMethods = {delete='POST,DELETE',index='GET'}
	this.allowedMethods = {};
	
	/**
	IMPLICIT FUNCTIONS: Uncomment to use
	function preHandler( event, rc, prc, action, eventArguments ){
	}
	function postHandler( event, rc, prc, action, eventArguments ){
	}
	function aroundHandler( event, rc, prc, targetAction, eventArguments ){
		// executed targeted action
		arguments.targetAction( event );
	}
	function onMissingAction( event, rc, prc, missingAction, eventArguments ){
	}
	function onError( event, rc, prc, faultAction, exception, eventArguments ){
	}
	function onInvalidHTTPMethod( event, rc, prc, faultAction, eventArguments ){
	}
	*/
	
	// add a new CF property that will have a reference to our model object called AmbassadorService
	property name="ambassadorService" inject="AmbassadorService";
	/**
	* index
	*/
	function index( event, rc, prc ){
		event.setView( "SECAAmbassadors/index" );
	}

	/**
	* create
	*/
	function create( event, rc, prc ){
		event.setView( "SECAAmbassadors/create" );
	}

	/**
	* show
	*/
	function show( event, rc, prc ){
		event.setView( "SECAAmbassadors/show" );
	}

	/**
	* update
	*/
	function update( event, rc, prc ){
		event.setView( "SECAAmbassadors/update" );
	}

	/**
	* delete
	*/
	function delete( event, rc, prc ){
		event.setView( "SECAAmbassadors/delete" );
	}


	
}
