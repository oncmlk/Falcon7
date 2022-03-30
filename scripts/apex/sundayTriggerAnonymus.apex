List<Account> accList = new List<Account>();
Account acc = new Account();
acc.name = 'Sunday Trigger';
accList.add(acc);
Account acc2 = new Account();
acc2.name = 'Monday Trigger';
accList.add(acc2);
Account acc3 = new Account();
acc3.name = 'Tuesday Trigger';
accList.add(acc3);

insert accList;

for (Account ac : accList) {
    ac.Name = ac.Name + ' Update';
}

update accList;


//1 tanesi icin insert ve update istersek:
// Account acc = new Account();
// acc.name = 'Sunday Trigger';
// insert acc;
// acc.name = 'Sunday Trigger Update';
// acc.Name = acc.Name + ' Update';
// update acc;