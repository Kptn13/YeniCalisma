import { LightningElement } from 'lwc';
export default class A10events extends LightningElement {
 isim
handleIsim(e){
this.isim=e.target.value
}
xCoordinate=0
yCoordinate=0
handleMove(e){
this.xCoordinate = e.clientX
this.yCoordinate  =e.pageY
}
}