public class HastaTriggerHandler {
    
    public static hasta__Share hastaPaylasimMetodu(ID HastaIdsi, ID paylasilacakKisiIdsi){
               Hasta__Share yeniPaylasim = new Hasta__Share();
               yeniPaylasim.ParentId = HastaIdsi ;  //   paylasilacak hasta id si
               yeniPaylasim.UserOrGroupId = paylasilacakKisiIdsi;  //  kiminle paylasilacak
               yeniPaylasim.AccessLevel = 'Edit';      // yetkisi ne olacak
               yeniPaylasim.RowCause = 'Manual';
               
        return yeniPaylasim;
        
        
    }

}