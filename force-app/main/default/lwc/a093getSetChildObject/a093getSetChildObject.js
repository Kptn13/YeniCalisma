import { LightningElement , api } from 'lwc';
export default class A093getSetChildObject extends LightningElement {
    customerInfo
get customer(){
return this.customerInfo
}
@api set customer(data){
/*
    let geciciKopya={...data}
    geciciKopya.name = geciciKopya.name + ' kardes'
    geciciKopya.yas  = ( geciciKopya.yas ) *2
*/
let geciciKopya={...data, name: data.name+' Buyuk Kardes' , yas: (data.yas)*3 }
  this.customerInfo = geciciKopya
 }
}