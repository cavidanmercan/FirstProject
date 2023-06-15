import { LightningElement, api } from 'lwc';

export default class ContactChild extends LightningElement {

    @api
    contact;


    handleClick(){
        // const myEvent = new CustomEvent('show', {detail:this.contact.Id});
        // this.dispatchEvent(myEvent);

        this.dispatchEvent(new CustomEvent('show', {detail:this.contact.Id}));
    }


}