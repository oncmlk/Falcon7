public class StringDemoClass {
    public void stringMethod1() {
        string sessionDescription = 'learning string methods in apex language in FUN.';
        // 1.length
        integer lengthOfStr = sessionDescription.length();
        system.debug('length of string is = ' + lengthOfStr);
        // 2. capitalize
        string upperCaseOfStr = sessionDescription.toUpperCase();
        system.debug('session desc in caps' + upperCaseOfStr);
        // 3. contains apex
        boolean abc = sessionDescription.contains('apex');
        system.debug('has Apex? ' + abc);
        //4.a Ignore Case
        boolean abd = sessionDescription.containsIgnoreCase('APEX');
        system.debug('has APEX 2? ' + abd);
        //4.b contains SalesForce
        boolean xyz = sessionDescription.contains('SalesForce');
        system.debug('has SalesForce? ' + xyz);

      
        //5 sample
       string cumle = '            how      are     you     today          ';
       // integer sample1 = cumle.length();
       // string sample2 = cumle.toUpperCase();
       // boolean sample3 = cumle.contains('you');
       // boolean sample4 = cumle.containsIgnoreCase('YOU');
       string sample5 = cumle.trim();
       system.debug('bosluksuz ' + sample5);
            
    }
}
