import { LightningElement } from 'lwc';
export default class A10customEventParent extends LightningElement {
    yeniBilgi = ' BAK BURASI DEGISECEK'
    handleElma(){
this.yeniBilgi=' yepis yeni bilgi firindan taze'
}
childVeri
handleArmut(event){
this.childVeri= event.detail
}

musteri ={
    name:'',
    yas:0
}
handleAyva(event){
let yeniMusteri= event.detail
let geciciKopya={...yeniMusteri}
geciciKopya.name= geciciKopya.name.toUpperCase()
geciciKopya.yas = geciciKopya.yas - 10
this.musteri = geciciKopya
}
}