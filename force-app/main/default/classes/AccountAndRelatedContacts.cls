public class AccountAndRelatedContacts {
   
    //  id sini verdigimiz bir accountun kac adet contacti var bunu gosteren method
    public static Integer contactSayisi( ID sorgulanacakAccountunIdsi    ){
        List<Contact> cntList = [SELECT id  FROM contact WHERE   AccountId =: sorgulanacakAccountunIdsi];
        return cntList.size();
    }
    
  // id sini verdigimiz bir accountun CONTACTLARIN TUM BILGILERINI LISTE HALINDE  bunu gosteren method
    public static LIST<CONTACT> contactLISTI( ID sorgulanacakAccountunIdsi    ){
        List<Contact> cntList = [SELECT id, lastName , Birthdate ,Email  FROM contact WHERE   AccountId =: sorgulanacakAccountunIdsi];
        return cntList;
    }
}