import { LightningElement, track } from 'lwc';

export default class A08trackLIST extends LightningElement {

  bireyId=3
  bireyName='isim'
  bireyYas=60

  @track aileBireyleri =[
    { id:1,
    name:'Naim',
  yas:34
  },
  {
    id:2,
    name:'Gulay',
    yas:30
  }
  ]

  handleName(event){
    this.bireyName=event.target.value
  }
  handleAge(event){
    this.bireyYas=event.target.value
  }
  handleSave(event){
    const member = {
        id: this.bireyId,
        name:this.bireyName,
        yas:this.bireyYas
    }
    this.aileBireyleri.push(member)
           bireyId++
   
  }
}