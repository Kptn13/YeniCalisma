public class StudentHandler {
    public static void afterinsertMethod(List<Student__c> stdList){
        //Trigger1: Whenever a student is created, 
    //a report card should automatically be created with the name of the student 
    //and the current academic term should be selected.
    //only one rep card for a term
        List<Report_Card__c> repCardList = new List<Report_Card__c>();
        //set<id> parentId = new set<id>();
        for(Student__c std:stdList){
            Report_Card__c newRepCard = new Report_Card__c();// 10-11-12 yi parantezin icine de alablrdik ()
            newRepCard.Student__c = std.id;
            //newRepCard.Academic_Term__c = '2023-1';
            newRepCard.Math__c = 100;
            integer mnthToday = Date.today().month();
            integer yearToday = Date.today().year();
            if(yearToday==2022){
                if(mnthToday<=6){
                    newRepCard.Academic_Term__c ='2022-1';
                        }else{
                           newRepCard.Academic_Term__c ='2022-2' ;
                        }
                
            }
            if(yearToday==2023){
                if(mnthToday<=6){
                    newRepCard.Academic_Term__c ='2023-1';
                        }else{
                           newRepCard.Academic_Term__c ='2023-2' ;
                        }
            }
            
            repCardList.add(newRepCard);
            //parentId.add(std.Parent__c);

        }
        insert repCardList;

        
        
    }
     public static void activeChildNumber(List<Student__c> studentList){
       List<Parent__c> parentList = new List<Parent__c>();
        Set<Id> ParentId = new Set<Id>();
        for(Student__c st:studentList){
            ParentId.add(st.Parent__c);
            
        }
        
        for(Parent__c p:[SELECT Id, Name, Child_Number__c, (SELECT Id FROM Students__r WHERE isActive__c=true) FROM Parent__c WHERE id IN:ParentId ]){
            
            p.Child_Number__c = p.students__r.size();
            parentList.add(p);
            
        }  
        Update parentList;
    }
    
}