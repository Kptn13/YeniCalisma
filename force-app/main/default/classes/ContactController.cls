public with sharing class ContactController {
    
    @AuraEnabled(cacheable=true)
    public static List<Contact> getAllContacts(){
        
        return [SELECT ID, Name FROM CONTACT LIMIT 5];
        
        
        
    }

}