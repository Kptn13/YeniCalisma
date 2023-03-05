@isTest
public class SayiPozitifNegatifTest {
    
    @isTest
    static VOID pozitifSayiTesti(){
    //  sayinin pozitif olma durumu
    String sonuc   =    SayiPozitifNegatif.sayiCinsiBul(3);  // 'Pozitif'
      system.assertEquals('Pozitif', sonuc);
      system.assertEquals('Pozitif', sonuc, 'kardes bir dah baksana koduna');
    system.assertNotEquals('Negatif', sonuc);
        
   //  sayinin negatif olma durumu
   String sonuc2   =    SayiPozitifNegatif.sayiCinsiBul(-10);  // 'Negatif'
     system.assertEquals('Negatif', sonuc2);
      system.assertEquals('Negatif', sonuc2, 'kardes bir dah baksana koduna');
    system.assertNotEquals('Pozitif', sonuc2);
        
       // sayinin Notr olma durumu
        String sonuc3   =    SayiPozitifNegatif.sayiCinsiBul(0);  // 'Notr'
     system.assertEquals('Notr', sonuc3);
      system.assertEquals('Notr', sonuc3, 'kardes bir dah baksana koduna');
    system.assertNotEquals('Pozitif', sonuc3);
     system.assertNotEquals('Negatif', sonuc3);
    }
}