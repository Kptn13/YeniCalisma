import { LightningElement } from 'lwc';
export default class A01reviewLWC extends LightningElement {
  name='';
  lastName='';
  age;
  flag=false;
  reverse;
    nameHandler(event){
        this.name=event.target.value;
    }
    lastnameHandler(event){
        this.lastName=event.target.value;
    }
    ageHandler(event){
        this.age=event.target.value;
    }
    flagHandler(event){
        this.flag=event.target.checked;
    }
    get screen(){
        this.reverse=this.name.split("").reverse().join("") + "-" +this.lastName.split("").reverse().join("")+ "-" + this.age;
        return this.reverse;
        console.log('calisti');
    }
}