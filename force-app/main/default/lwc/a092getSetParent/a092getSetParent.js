import { LightningElement } from 'lwc';
export default class A092getSetParent extends LightningElement {
    girilenYas=0
    handleYas(event){
    this.girilenYas = event.target.value
    }
  customerDetail={
    name:'Resul',
    yas: 9
  }
}