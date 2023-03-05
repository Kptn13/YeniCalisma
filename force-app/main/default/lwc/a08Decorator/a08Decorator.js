import { LightningElement, track } from 'lwc';

export default class A08Decorator extends LightningElement {

  name = 'Naim'
  surname='Deniz'

  @track aileBireyi = {
    isim: 'Kazim',
    yas: 34
  }


  handleIsim(event){
    this.aileBireyi.isim = event.target.value;
  }
  handleYas(event){
    this.aileBireyi.yas=event.target.value;
  }

}