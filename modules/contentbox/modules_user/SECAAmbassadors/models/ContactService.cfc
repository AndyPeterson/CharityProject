component singleton accessors="true"{

    ContactService function init(){
        variables.data = [
            { id=1, name="coldbox" },
            { id=2, name="superman" },
            { id=3, name="batman" }
        ];    
        return this;

    }

    function getAll(){
        return variables.data;
    }

}