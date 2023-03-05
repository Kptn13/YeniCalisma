import { LightningElement } from 'lwc';

export default class A3ConditionalRendering extends LightningElement {

  flag = true
  handleFlag(event){
    this.flag=event.target.checked
  }


}