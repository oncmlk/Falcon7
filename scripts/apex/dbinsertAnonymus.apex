Account acc = new account();
acc.name ='SI Test';


Account acc1 = new account();
acc1.name =' SI Testt11';

Account accx1 = new account();
Account accx2 = new account();


List<Account>listAcc = new List<Account>{acc, acc1, accx1, accx2};
List<Database.SaveResult> results = Database.insert(listAcc,false);
//Iterate SaveResult array
for(Database.SaveResult eachResult : results){
    if (eachResult.isSuccess()){
        //successfully inserted
        //handle insertion
        system.debug('Account Succesfully inserted, Account Id is: '  +eachResult.getId());
    }
    else {
    //Error ecountered
    system.debug('Errors  : ' +eachResult.getErrors());
    }

}
