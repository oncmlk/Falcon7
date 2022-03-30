public  class DemoDmlClass {
    public DemoDmlClass() {
     system.debug('Welcome to the world of SOQL. Please enter the key character to search.');
    }
    public static void dmlInsert(string keychar){
        List<Account> acclist=[ SELECT id, name from Account Where name LIKE : '%'+keychar+'%'];
        
        if(!accList.isEmpty()){
        List<Contact> conlist = new List<Contact>();
        for(Account acc : accList) {
            system.debug(acc.id+ ' | '+ acc.name);
            contact cn = new Contact();
            cn.lastName = acc.name + 'copies from account';
            cn.accountId = acc.id;
            conList.add(cn);
         }
           insert conlist;
           for (contact c: conList){
               system.debug(c);
           }
      }
    }
}