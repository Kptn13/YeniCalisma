import { LightningElement, wire } from 'lwc'
import { fireEvent } from 'c/pubsub'
import {CurrentPageReference } from 'lightning/navigation'

export default class A11siblingPublisher extends LightningElement {
  @wire(CurrentPageReference )
  pageRef;

  callEvent(event){
    var eventParam = {'firstname': 'Resul'}
    fireEvent(this.pageRef, 'pubsubevent', eventParam)

  }
}