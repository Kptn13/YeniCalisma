import { LightningElement } from 'lwc';
export default class A12lifecycleChild extends LightningElement {
    constructor(){
        super()
       // alert('CHILD CONSTRUCTOR alert')
       
       }
       
       connectedCallback(){
    throw new Error('bu error yapay olarak olusturuldu')
    window.addEventListener('click',this.handleClickSayisi)
    window.addEventListener('click',this.handleClickNo)
       // alert('CHILD connectedCallback alert')
       }
       
       handleClickSayisi(event){
        console.log('Ekrana klicklendi')
       }
       handleClickNo(event){
        console.log('Ekrana handleClickNo klicklendi')
       }
       renderedCallback(){
      //  alert('CHILD renderedCallback() alert')
       }
       
       disconnectedCallback(){
       //window.removeEventListener('click',this.handleClickSayisi)
       
       }
       
       errorCallback(error,stack){
       
       }
}