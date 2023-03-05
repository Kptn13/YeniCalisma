public with sharing class LWCAccountCreation {
   
    @AuraEnabled
    public static String accCreation(String accIsim, Integer accTel){
        try {
            Account acc = new Account();
            acc.Name = accIsim;
            acc.Phone = String.valueOf(accTel);
            insert acc;

            return 'Tebrikler';
        } catch (Exception e) {
            return 'olmadi:(';
        }
    }
}