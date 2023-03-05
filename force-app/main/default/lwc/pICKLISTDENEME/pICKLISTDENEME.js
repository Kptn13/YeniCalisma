import { track ,LightningElement,} from 'lwc';
export default class XxxPicklistLWC extends LightningElement {
secilen='';
              
get secenekler(){
  return[
    {label: 'Honda' , value: 'Honda Civic'},
    {label: 'BMW', value: 'BMW 2022'},
  ]
}
 
handlePicklist(event){
    this.secilen = event.detail.value;
}
secilen2='';
              
get secenekler2(){
  return[
    {label: 'motorCinsi' , value: 'VTECT'},
    {label: 'Motor Sayisi', value: 3},
  ]
}
 
handlePicklist2(event2){
    this.secilen2 = event2.detail.value;
}

secilen3='';
              
get secenekler3(){
  return[
    {label: 'beygirGucu' , value: 140},
    {label: 'motorGucu', value: 2},
    {label: 'yakitTuru', value: 'Diesel'},
  ]
}
 
handlePicklist3(event3){
    this.secilen3 = event3.detail.value;
}

}