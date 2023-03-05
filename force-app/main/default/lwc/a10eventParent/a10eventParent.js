import { LightningElement } from 'lwc';
export default class A10evetParent extends LightningElement {
    clickSayisi=0
    handleClick(){
        this.clickSayisi = parseInt(this.clickSayisi) +1
    }  
handleYeniClick(){
    alert('***ALERT**  Bak beni Child daki Buton aktif etti')
    window.alert('Bak beni Child daki Buton aktif etti')
}
    renderedCallback(){
 this.template.querySelector('c-a10event-child-js')
 .addEventListener('click' , this.handleYeniClick)
    }
}