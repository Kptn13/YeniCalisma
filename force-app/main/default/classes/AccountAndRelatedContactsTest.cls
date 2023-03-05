@istest
public class AccountAndRelatedContactsTest {
    // static testMethod  Void contactSayisiTest(){
    // isTest(SeeAllData=true)    gercek canli database ile iletisime gecme TAVSIYE EDILMIYOR
     @isTest
     static  Void contactSayisiTest(){
        Account acc= new Account(); 
         acc.name= 'ELMA';
         insert acc;
       Contact cnt = new Contact();
         cnt.AccountId = acc.id;
         cnt.LastName = 'BITLIS';
        insert cnt;
    //  Account acc = [SELECT id FROM account WHERE name='sForce Wise Wise'];
      Integer contactSayisi=AccountAndRelatedContacts.contactSayisi(acc.id);
      system.assertEquals(1, contactSayisi);
    }
    // contactLISTI( ID sorgulanacakAccountunIdsi    )
    @isTest
     static  Void contactLISTITest(){
        Account acc= new Account();
         acc.name= 'ARMUT';
         insert acc;
       Contact cnt = new Contact();
         cnt.AccountId = acc.id;
         cnt.LastName = 'VAN';
        insert cnt;
        Contact cnt2 = new Contact();
        cnt2.AccountId = acc.id;
        cnt2.LastName = 'DIYARBAKIR';
        insert cnt2;
    //  Account acc = [SELECT id FROM account WHERE name='sForce Wise Wise'];
      LIST<CONTACT> contactList=AccountAndRelatedContacts.contactLISTI(acc.id);
  //  system.assertEquals('farketmez', contactList[0].lastname);
       system.assertEquals(2, contactList.size());
    }
}