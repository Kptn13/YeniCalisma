import { api, LightningElement, track } from 'lwc';
export default class A091getter extends LightningElement {
sayi1=9
sayi2=3
ortalama= (this.sayi1 + this.sayi2)/2
get sayilarinOrtalamasi(){
   return  ( (this.sayi1 + this.sayi2)/2 )

}
get sayilarincarpimi(){
   return (this.sayi1 * this.sayi2)
}
isimler=['ali','veli','hasan','resul','ayse','ertugrul']
 istekIsim = this.isimler[2].toUpperCase()
 get istekIsimGet (){
    return  this.isimler[2].toUpperCase()
  }
  index = 0
  handleIndex(event){
   this.index = event.target.value
  }
@api
  kullaniciIstekIsim = this.isimler[this.index].toUpperCase()
  get kullaniciIstekIsimGet (){
 if(  this.index < this.isimler.length  ){
        return  this.isimler[this.index].toUpperCase()
     }else {
       window.alert('hoop  sayi yanlis oldu')
   }
}
}