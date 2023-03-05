import {wire, LightningElement } from 'lwc';
import accountAramaMotoru from '@salesforce/apex/AccountControllerAramaMotoru.getAllAccounts';
export default class A08wireDecorator extends LightningElement {
filtre
handleInput(event){
this.filtre = event.target.value
}
    @wire (accountAramaMotoru ,{isim:'$filtre'}  ) 
       butunAccountlar;
}