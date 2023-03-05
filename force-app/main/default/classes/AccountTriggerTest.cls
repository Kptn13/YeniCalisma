@isTest
public class AccountTriggerTest {
   @isTest
    static Void accountBeforeInsertTest(){
      Account acc= DataFactory.accountOlustur();
     
        acc.Name='elma';
        
     test.startTest();
       insert acc; 
     test.stopTest();
        
        Account yeniAcc=[SELECT id, name FROM account  WHERE id =: acc.Id  ];
        system.assertEquals('elma INSERTED', yeniAcc.name);
   
    }
    
   @isTest
    static Void accountBeforeUpdateTest(){
      Account acc= DataFactory.accountOlustur();
        acc.Name='elma';
 test.startTest();
       insert acc; 
      
 /*  Account yeniAcc=[SELECT id, name ,BillingCity FROM account  WHERE id =: acc.Id  ];      
       yeniAcc.BillingCity = 'Istanbul'; 
       update yeniAcc; 
        
 Account sonAcc=[SELECT id, name ,BillingCity FROM account  WHERE id =: acc.Id  ];       
        system.assertEquals('elma INSERTED UPDATED', sonAcc.name);
   */
 
        /*
  Account yeniAcc=[SELECT id, name ,BillingCity FROM account  WHERE id =: acc.Id  ];      
       yeniAcc.Name= 'Test'; 
       update yeniAcc; 
        
 Account sonAcc=[SELECT id, name ,BillingCity FROM account  WHERE id =: acc.Id  ];       
        system.assertEquals('Test UPDATED', sonAcc.name);      
        
*/
        /*
 Account yeniAcc=[SELECT id, name ,BillingCity FROM account  WHERE id =: acc.Id  ];      
       yeniAcc.Name= 'Test'; 
       update yeniAcc; 
        
 // Account sonAcc=[SELECT id, name ,BillingCity FROM account  WHERE id =: acc.Id  ];       
        system.assertEquals('Test', yeniAcc.name);      
   */
        
   acc.name='Test';
      
        update acc;
 test.stopTest();
  Account yeniAcc=[SELECT id, name ,BillingCity FROM account  WHERE id =: acc.Id  ];      
      system.assertEquals('Test UPDATED', yeniAcc.name);        
    } 
    
}