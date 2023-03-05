import { LightningElement, wire } from 'lwc';
import getAllContacts from '@salesforce/apex/ContactController.getAllContacts'

export default class A08wireDecorator extends LightningElement {
  
  @wire (getAllContacts) butunContactlar;



}