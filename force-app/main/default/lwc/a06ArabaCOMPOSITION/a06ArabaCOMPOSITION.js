import { api, LightningElement } from 'lwc';

export default class A06ArabaCOMPOSITION extends LightningElement {
  arabaMarkasi = 'HONDA'
  yakitTuruDede ='ELEKTRIK'
  motorGucuDede =  4

  handleYakitTuru(e){
    this.yakitTuruDede =e.target.value
  }
  handleMotorGucu(e){
  this.motorGucuDede = e.target.value
}

}