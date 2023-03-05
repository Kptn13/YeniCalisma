public class userCreation {
    
    public static void createUser(String userNameEmail, String UserLastName, String userAlias, String userEmail ) {
        User brandNewUsr= new User();
        brandNewUsr.Username = userNameEmail;
        brandNewUsr.LastName = UserLastName;
        brandNewUsr.Alias = userAlias;
        brandNewUsr.Email = userEmail;
        
        Profile prof= [SELECT id FROM Profile WHERE NAME='Hemsire1' LIMIT 1];
        brandNewUsr.ProfileId = prof.id;
        brandNewUsr.LocaleSidKey = 'en_US';
        brandNewUsr.LanguageLocaleKey = 'en_US';
        brandNewUsr.EmailEncodingKey = 'UTF-8';
        brandNewUsr.TimeZoneSidKey = 'America/Los_Angeles';
         try{
            insert brandNewUsr;
        }
        catch(Exception e){
            system.debug('exception ' + e);
        }
    }
    

}