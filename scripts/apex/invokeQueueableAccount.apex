List<Account> accs = [Select Id, Name from Account limit 20];
AccountQueueableExample aqe= new AccountQueueableExample(accs);
ID jobID = system.enqueueJob(aqe);
system.debug('jobID'+jobID);
