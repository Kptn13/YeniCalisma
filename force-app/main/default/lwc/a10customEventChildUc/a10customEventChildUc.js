import { LightningElement, track } from 'lwc';
    export default class A10customEventChildUc extends LightningElement {
    @track 
    customer={
            name:'Mahmut',
            Yas:45
    }
        handelClick(){
            const cstEvent = new CustomEvent('ayva' , {detail:this.customer}    )
            this.dispatchEvent(cstEvent)
        }
        handleIsim(event){
    this.customer.name=event.target.value
        }
    handleYas(event){
        this.customer.yas=event.target.value
    }
    }