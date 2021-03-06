/**
********************************************************************************
Copyright Since 2005 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
www.coldbox.org | www.luismajano.com | www.ortussolutions.com
********************************************************************************
This validator validates agains discrete mathematic operations.
*/
component accessors="true" implements="cbvalidation.models.validators.IValidator" singleton{

	property name="name";

	DiscreteValidator function init(){
		name = "Discrete";
		validTypes = "eq,neq,lt,lte,gt,gte";
		return this;
	}

	/**
	* Will check if an incoming value validates
	* @validationResultThe result object of the validation
	* @targetThe target object to validate on
	* @fieldThe field on the target object to validate on
	* @targetValueThe target value to validate
	* @validationDataThe validation data the validator was created with
	*/
	boolean function validate(required cbvalidation.models.result.IValidationResult validationResult, required any target, required string field, any targetValue, any validationData){

		if( !find(":",arguments.validationData) OR listLen(arguments.validationData,":") LT 2){
			throw(message="The validator data is invalid: #arguments.validationData#, it must follow the format 'operation:value', like eq:4, gt:4",type="DiscreteValidator.InvalidValidationData");
		}

		var operation = getToken( arguments.validationData, 1, ":" );
		var operationValue = getToken( arguments.validationData, 2, ":" );

		if( !reFindNoCase( "^(#replace(validTypes,",","|","all")#)$", operation) ){
			throw(message="The validator data is invalid: #arguments.validationData#",detail="Valid discrete types are #validTypes#",type="DiscreteValidator.InvalidValidationData");
		}

		var r = false;
		if( !isNull(arguments.targetValue) ){
			switch( operation ){
				case "eq" 		: { r = ( arguments.targetValue eq operationValue ); break; }
				case "neq"		: { r = ( arguments.targetValue neq operationValue ); break; }
				case "lt"		: { r = ( arguments.targetValue lt operationValue ); break; }
				case "lte"		: { r = ( arguments.targetValue lte operationValue ); break; }
				case "gt"		: { r = ( arguments.targetValue gt operationValue ); break; }
				case "gte"		: { r = ( arguments.targetValue gte operationValue ); break; }

			}
		}

		if( !r ){
			var args = {
				message        = "The '#arguments.field#' value is #operation# than #operationValue#",
				field          = arguments.field,
				validationType = getName(),
				rejectedValue  = ( isSimpleValue( arguments.targetValue ) ? arguments.targetValue : '' ),
				validationData = arguments.validationData
			};
			var error = validationResult.newError(argumentCollection=args).setErrorMetadata({operation=operation, operationValue=operationValue});
			validationResult.addError( error );
		}

		return r;
	}

	/**
	* Get the name of the validator
	*/
	string function getName(){
		return name;
	}

}