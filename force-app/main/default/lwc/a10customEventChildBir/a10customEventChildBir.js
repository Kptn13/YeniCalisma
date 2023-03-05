import { LightningElement } from 'lwc';
export default class A10customEventChildBir extends LightningElement {

  handleClick(){
    const cstEvent = new CustomEvent('elma')
    this.dispatchEvent(cstEvent)
  }
}