public class Adres {
    string permanentAddress = '4980 Sugar Grove Blvd 7777 TX';
    string currentAddress = '1111 Current Grove Blvd 1111 TX';
    string officeAddress = '2222 Office Grove Blvd 2222 TX';

 public void accessAddres(string x)   {
    If (x=='permanentAddress')
    {
        System.debug('permanent adres is  ' + permanentAddress);
    }
   else if (x=='currentAddress')
    {
        System.debug('current adres is  ' + currentAddress);
    }
    else if (x=='officeAddress')
    {
        System.debug('office adres is  ' + officeAddress);
    }
    else
    {
        System.debug('Address Type is required to print an address value' );
    }
   }
}
