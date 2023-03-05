import { LightningElement } from 'lwc';
export default class A10eventBubbling extends LightningElement {

icClick =0
torundanGelenBilgi
handleIcClick(e){
    this.icClick++
    this.torundanGelenBilgi='torunuzunz takdir belgesi aldi'
}

ortaClick =0
babadanGelenBilgi
handleOrtaClick (event){
this.ortaClick--
this.babadanGelenBilgi= ' Babanin maasi artti'
}

disClick =0
handleDisClick(){
this.disClick++
}
sonArmut=0
handleArmut(){
this.sonArmut++
}
}