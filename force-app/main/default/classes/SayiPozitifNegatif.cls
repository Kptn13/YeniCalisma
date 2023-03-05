public class SayiPozitifNegatif {
    
    public static String sayiCinsiBul(Integer sayi){
        if(sayi>0){
            return 'Pozitif';
            
        }else if(sayi==0){
            return 'Notr';
        
        }else{
            return 'Negatif';
            
        }
    }

}