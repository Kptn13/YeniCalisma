import { LightningElement, track} from 'lwc';

export default class A08reactive extends LightningElement {

  ad = "Naim";
  soyad= "Deniz"
 
 @track aileBireyi= {
    name: '' ,
    yas: ''
  }

  handleAd(event){
 // this.ad = event.target.value;
  this.aileBireyi.name =event.target.value

}

  handleYas(event){
  //this.soyad = event.target.value;
  this.aileBireyi.yas = event.target.value


}
}