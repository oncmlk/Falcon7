public class ValidateAddress {
    public void validateHomeAddress() {
        string houseName = 'white house';
        string streetName = '4444 sugor grove blvd white house no.777';
        string cityName= 'houston';
        string stateName= 'Texas';
        integer stateIsoCode = 1888;
        string countryName = 'USA';
        integer countryIso= 9999;
        
        
        // lenghth of street name     
        integer lengthOfStr = streetName.length();
        system.debug('length of street name is = ' + lengthOfStr);

        // contains house name ?
        boolean abc = streetName.contains('white house');
        system.debug('has street name include house name? ' + abc);

        // contains state Iso code ?
        boolean xyz = streetName.contains('1888');
        system.debug('has Iso code? ' + xyz);

        // uppercase
        string upperCaseOfStr = countryName.toUpperCase();
        system.debug('upper case of country name is ' + upperCaseOfStr);
        
        // lowercase
        string lowerCaseOfStr = cityName.toLowerCase();
        system.debug('lower case of country name   is' + lowerCaseOfStr);
        string lowerCaseOfStr2 = stateName.toLowerCase();
        system.debug('lower case of state name   is' + lowerCaseOfStr2);

        //concantance
        



        // 

   
       

    }
}




        

        
       