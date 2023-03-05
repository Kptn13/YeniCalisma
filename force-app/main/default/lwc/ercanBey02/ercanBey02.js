import { LightningElement, track } from 'lwc';
import account from '@salesforce/apex/AccountCreate.AccountOlusturma';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class A02AccountCreate extends LightningElement {
@track
  accountName
  handleInput(event){
    this.accountName = event.target.value
  }
  handleClick(){
    account({accName:this.accountName})
    .then (response => {
      if(response == 'success'){
           this.dispatchEvent(new ShowToastEvent({
           title: 'Yeni Account Olustu',
           message : '****** Account created Successfully ******',
           variant : 'success'
       }))} 
       else {
       this.dispatchEvent(new ShowToastEvent({
           title: 'Yeni Account Olusmadi',
           message : 'something went wrong',
           variant : 'error'
       }));
      }
       
   })
  .catch (error=> { console.log('error: ', error);})
  .finally( () => { console.log('finish') ;}); 
} 
}