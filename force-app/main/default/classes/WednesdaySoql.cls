public  class WednesdaySoql {
  
  public static void accountSoql(){
      List<Account> accList = [select id, name, Phone from Account];
      System.debug('Listenin eleman sayisi ==> '+ accList.size());
      integer sayac = 0;
      for (Account acc : accList) {
          sayac++;
          System.debug(sayac + '. kaydin adi => ' + acc.name + ' ==== telefon numarası => ' + acc.phone) ;
      }
      System.debug('Toplam Account sayim => ' + sayac);
  }
  public static void accountSoql2() {
      Account largestAnnualRevenueAcc = [select id, name, AnnualRevenue  from Account where AnnualRevenue != null ORDER BY AnnualRevenue DESC limit 1];
      System.debug('En buyuk cirosu olan firma => ' + largestAnnualRevenueAcc);
      List<Account> accList = [select id, name, AnnualRevenue  from Account where AnnualRevenue != null ORDER BY AnnualRevenue DESC];
      if (!accList.isEmpty()){
      System.debug('Listenin eleman sayisi => ' + accList.size());
      integer sayac = 0;
      for (Account acc : accList) {
          sayac++;
          System.debug(sayac + '. kaydin adi => ' + acc.name + ' === Annual Revenue  => ' + acc.AnnualRevenue) ;
      }
      System.debug('Toplam Account sayim => ' + sayac);
      }else{
          system.debug('Your list is empty.Please check your records.');
      }
 }

 public static void OpportunitySoql(){
     //bir opporcunity listesi name, amount, stageName ve amount olmayanlari almasin listeye,stage name closed won olmayanlari getirsin
List <Opportunity> oppList = [select  name, amount, StageName from Opportunity where
Amount != null and StageName != 'Closed won'];
system.debug(oppList);
if (!oppList.isEmpty()){
        integer sayac =0;
    for (Opportunity opp : opplist){
        sayac++;
        system.debug(sayac + 'opporcunity nin name => '+ opp.name + '==Amount =  '+ opp.Amount + '==stage Name => '+opp.StageName);
    }
}else{
    system.debug ('Listeniz dolu degil ...Lutfen gecerli bir liste gonderiniz..');
}
    
//En YUKSEK AMOUNTA SAHIP RECORDU YAZINIZ
      Opportunity Opp = [select  name, Amount, StageName  from Opportunity where Amount != null ORDER BY Amount DESC limit 1];
      System.debug('En buyuk amountta  sahip olan record => ' + Opp);
 }
}