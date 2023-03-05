import { LightningElement } from 'lwc';

export default class A2DataBinding extends LightningElement {
isim = "Naim BEY";

ad ="";

handleInput(event){

  this.ad = event.target.value;


}
surname= "deniz";
buyukIsim;

handleOnChange(event){
  this.surname = event.target.value;
}

get IsmiBuyukHarfeCevir(){

  this.buyukIsim = this.surname.toUpperCase();
  return this.buyukIsim;
}





firstName="";
handleIsim(event){
  this.FirstName = event.target.value;
}

lastName="";
handleSoyIsim(event){
  this.LastName= event.target.value;
}
upperCaseFullName;
get tamIsim(){

  this.upperCaseFullName = this.firstName.toUpperCase()  + " " +this.lastName.toUpperCase() ;
  return this.upperCaseFullName;
}


}