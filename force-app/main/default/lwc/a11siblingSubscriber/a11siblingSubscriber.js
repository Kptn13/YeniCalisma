import { LightningElement , wire } from 'lwc'
import { registerListener , unregisterAllListeners } from 'c/pubsub'
import { CurrentPageReference  } from 'lightning/navigation'
export default class A11siblingSubscriber extends LightningElement {
    @wire(CurrentPageReference )
    pageRef;

connectedCallback(){
    registerListener('pubsubevent', this.handleCallback, this)
}
isim
handleCallback(detail){
let geciciKopya={...detail}
geciciKopya.firstname= geciciKopya.firstname.toUpperCase()
this.isim = geciciKopya.firstname
    //alert('kardes den gelen bilgi ' + detail.firstname)
}
unregisterAllListeners(){
    unregisterAllListeners(this)
}
}