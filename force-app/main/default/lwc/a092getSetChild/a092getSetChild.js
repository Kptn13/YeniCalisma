import { api, LightningElement } from 'lwc';

export default class A092getSetChild extends LightningElement {



 container
 @api get dogumYili (){
  return this.container
 }
 set dogumYili(data){
  const year = new Date().getFullYear();
  this.container =year - data
 }
}