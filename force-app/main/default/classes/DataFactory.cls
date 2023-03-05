//  DATA FACTORY
@isTest
public class DataFactory {
    Public static Account accountOlustur(){
        Account acc = new Account();
        acc.Name='Armut';
        acc.BillingCountry = 'Turkiye';
        
        return acc;
    }    
    public static CONTACT contactOlustur(){
        
         Contact cnt = new Contact();
         cnt.FirstName= 'Test Contact' ;
         cnt.LastName= 'Last Name' ;
        
         return cnt;
                
    }
    public static Opportunity oppOlustur(){
        Opportunity opp = new Opportunity();
        opp.StageName='Value Proposition';
        opp.Name = 'Test Opp';
        opp.CloseDate = date.Today()+8;
        
        return opp;
        
    }
    
}