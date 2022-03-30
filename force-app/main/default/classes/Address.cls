public  class Address {
    public void homeAddress() {
        string yourName = 'Melike';
        integer family = 3;
        string houseName = 'white house';
        integer houseNumber =806;
        string streetName = 'sugor grove';
        string cityName= 'houston';
        string stateName= 'Texas';
        integer isoCode = 1888;
        string countryName = 'USA';
        integer countryIso= 9999;
        integer zipCode=77477;
        boolean currentHome = true;

        system.debug('My name is  ' + yourName);
        system.debug('Total number of memebers in my family is  ' + family);
        system.debug('My house name is  ' + houseName);
        system.debug('House nuber is  ' + houseNumber);
        system.debug('Streeng name is  ' + streetName);
        system.debug('City name is  ' + cityName);
        system.debug('iso Code  ' + isoCode);
        system.debug('country name is  ' + countryName);
        system.debug('country iso is   ' + countryIso);
        system.debug('zip code is  ' + zipCode);
        system.debug('is current home?  ' + currentHome);

    }
}
