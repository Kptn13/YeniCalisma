trigger HastaTrigger on Hasta__c (before insert, before update,before delete, after insert, after update, after delete, after undelete) {
    
    SWITCH on Trigger.operationType {
        WHEN BEFORE_INSERT  { }
        WHEN BEFORE_UPDATE  { }
        WHEN BEFORE_DELETE  { }
        WHEN AFTER_INSERT   { 
            
            List<Hasta__Share> hastaPaylasimListesi = new List<hasta__Share>();
            for(Hasta__c hasta:trigger.new){
                //hemsire ile hasta recordu paylasildi
            Hasta__Share hemsireIlePaylasimRecordu = HastaTriggerHandler.hastaPaylasimMetodu(hasta.Id, hasta.hemsire__c);
            hastaPaylasimListesi.add(hemsireIlePaylasimRecordu);
            
            //doktor ile hasta recordu paylasildi
            Hasta__Share doktorIlePaylasimRecordu = HastaTriggerHandler.hastaPaylasimMetodu(hasta.Id, hasta.Doktor__c);
            hastaPaylasimListesi.add(doktorIlePaylasimRecordu);
                
            }
         insert hastaPaylasimListesi;
        
        
        
        }
        WHEN AFTER_UPDATE   { }
        WHEN AFTER_DELETE   { }
        WHEN AFTER_UNDELETE { }
    }

}