import { LightningElement } from 'lwc';

export default class A08reactive extends LightningElement {

  familyName = 'DENIZ';
  handleFamilyName(event){
    this.familyName = event.target.value;
    console.log('kod render edildi')
  }
}