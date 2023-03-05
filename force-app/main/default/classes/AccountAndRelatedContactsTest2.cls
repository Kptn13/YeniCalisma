@isTest
public class AccountAndRelatedContactsTest2 {
    @testSetup 
    Static Void createDatabase(){
        Account acc= new Account();
         acc.name= 'test';
         insert acc;
         
       Contact cnt = new Contact();
         cnt.AccountId = acc.id;
         cnt.LastName = 'farketmez';
        insert cnt;
      
      Contact cnt2 = new Contact();
         cnt2.AccountId = acc.id;
         cnt2.LastName = 'farketmez2';
        insert cnt2;
        
    }
    
    @isTest
     static  Void contactSayisiTest(){  
 
      Account acc = [SELECT id FROM account WHERE name='test'];         
      Integer contactSayisi=AccountAndRelatedContacts.contactSayisi(acc.id);
     
      system.assertEquals(2, contactSayisi);   
         
         
    }
    
  @isTest
     static  Void contactLISTITest(){  
     
      
    Account acc = [SELECT id FROM account WHERE name='test'];         
         
      LIST<CONTACT> contactList=AccountAndRelatedContacts.contactLISTI(acc.id);
     
  //  system.assertEquals('farketmez', contactList[0].lastname);
       system.assertEquals(2, contactList.size());  
         
    }  
    
    
    
    
}