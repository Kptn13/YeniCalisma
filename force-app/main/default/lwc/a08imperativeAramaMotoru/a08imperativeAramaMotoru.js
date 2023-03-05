import { LightningElement , wire } from 'lwc';
import accountAramaMotoru from '@salesforce/apex/AccountControllerAramaMotoruImperative.getAllAccounts';
export default class A08imperativeAramaMotoru extends LightningElement {
    filtre
    handleInput(event){
    this.filtre = event.target.value
    
    }
    
      // @wire (accountAramaMotoru ,{isim:'$filtre'}  )  butunAccountlar;
    
   accountListesi
    hata
      handleClick(){
        accountAramaMotoru({isim:this.filtre})
        .then ( (result) => { this.accountListesi =result ;
                               this.hata = undefined      }     )
        .catch ( (error) => { this.hata = error ; 
                              this.accountListesi = undefined }  )
      }  
}