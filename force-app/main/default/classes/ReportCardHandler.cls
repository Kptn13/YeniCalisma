public class ReportCardHandler {
    public static void updateScore(List<Report_Card__c> rcList){
        for(Report_Card__c karne : rcList ){
            if(karne.Math__c <0 || karne.Math__c>100 || Karne.English__c<0 || karne.English__c>100 || karne.Geography__c<0 || karne.Geography__c>100 || karne.History__c<0 || karne.History__c>100){
                karne.addError('Score must be between 0-100');
            }else{
                if(karne.Average__c<40 || karne.Math__c<40 || karne.English__c<40){
                    karne.Overall_Score__c ='Fail';
                }else if(karne.Average__c<60){
                    karne.Overall_Score__c ='Pass';
                }else if(karne.Average__c<80){
                    karne.Overall_Score__c='Good';
                }else{
                    karne.Overall_Score__c ='Excellent';
                } 
            }
        }
        
    }

}