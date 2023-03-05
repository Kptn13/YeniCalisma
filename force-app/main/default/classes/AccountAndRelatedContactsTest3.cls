@isTest
public class AccountAndRelatedContactsTest3 {
    
    @isTest
     static  Void contactSayisiListTest(){ 
      
      Account acc =  DataFactory.accountOlustur();
         acc.Fax = '38585';
         insert acc;
         
       Contact cnt = DataFactory.contactOlustur();
         cnt.AccountId = acc.id;
         insert cnt;
 
     
      LIST<CONTACT> contactSayisiList=AccountAndRelatedContacts.contactLISTI(acc.id);
     
  //  system.assertEquals('farketmez', contactList[0].lastname);
      system.assertEquals(2, contactSayisiList.size());  
         
    } 
    @isTest 
    Static Void contactSayisiTest(){
        Account acc =  DataFactory.accountOlustur();
         insert acc;
         
       Contact cnt = DataFactory.contactOlustur();
         cnt.AccountId = acc.id;
         insert cnt;
      
       Contact cnt2 = DataFactory.contactOlustur();
         cnt2.AccountId = acc.id;
        insert cnt2;

    Integer contactSayisi=AccountAndRelatedContacts.contactSayisi(acc.id);
        
      system.assertEquals(2, contactSayisi);   

}
}