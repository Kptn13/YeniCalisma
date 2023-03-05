import { LightningElement } from 'lwc';
import accountOlustur from '@salesforce/apex/LWCAccountCreation.accCreation';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class A08accountOlustur extends LightningElement {
    accountName;
    accountPhoneNo;
    
    handleInput(event){
        this.accountName = event.target.value;
    }
    
    handleInputPhone(event){
        this.accountPhoneNo = event.target.value;
    }
    
    handleClick(){
        accountOlustur({ accIsim: this.accountName, accTel: this.accountPhoneNo })    
            .then(response => {
                if(response == 'Tebrikler'){
                    this.dispatchEvent(new ShowToastEvent({
                        title: 'Başarılı',
                        message: 'Hesap başarıyla oluşturuldu.',
                        variant: 'success'
                    }));
                } else {
                    this.dispatchEvent(new ShowToastEvent({
                        title: 'Hata',
                        message: 'Bir şeyler yanlış gitti.',
                        variant: 'error'
                    }));
                }
            })
            .catch (error=> { console.log('error: ', error);})
            .finally( () => { this.isOpenSpinner = false ;}); 
    } 
}