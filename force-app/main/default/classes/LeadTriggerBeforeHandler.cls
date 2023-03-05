public class LeadTriggerBeforeHandler {
    
    public static void  beforeInsertHandler(List<Lead> ld){
        //if a new lead is created or updated and if 'industry' filed is null, give a warning(error)
      /*  for(Lead lderror: ld){
                 if(lderror.Industry == null){
                     //lderror.addError('Olusturdugunuz lead icin industry field bos olamaz!!');
                     lderror.Industry.addError('Olusturdugunuz lead icin industry field bos olamaz!!');

                 }
             } */
        
        for(Lead xlead : ld){
            if(xlead.LeadSource==null){
                xlead.leadSource = 'Other';
            }
        }

 
    }
    public static Boolean bayrak =true;
    public static void afterInsertHandler(List<Lead> gelenLeadList){
        if(bayrak){
           bayrak = false;
            
      //after creating a new lead, cretae another lead
        List<Lead> leadList = new List<Lead>();
        for(Lead newLead: gelenLeadList){
        Lead newOne = new Lead();
        newOne.FirstName = 'A new lead created';
        newOne.Company='A sirketi';
        newOne.LastName = 'Armut';
        newOne.Industry= 'Banking';
        leadList.add(newOne);
       }
        Database.insert(leadList);
      }
     }
    
    public static void beforeUpdateHandler(List<Lead> yeniLead, Map<id,Lead> leadEskiHal){
        for(Lead newLead: yeniLead){
          
           Lead leadinEskiHali = leadEskiHal.get(newLead.Id);
           if(leadinEskiHali.Status=='Open - Not Contacted' && (newLead.Status=='Closed - Converted' ||
                                                                newLead.Status=='Closed - Not Converted') ){
                  newLead.addError('Lead i arar misin!!!');
                  
              }
              
          }
    }

}