import getContactsWithTitle from '@salesforce/apex/ContactController.getContactsWithTitle';
import { LightningElement,wire } from 'lwc';

export default class ContactParent extends LightningElement {

    allContacts;
    error;
    clickedContactId;

    handleClickedContact(event){
        this.clickedContactId=event.detail;
    }


    @wire(getContactsWithTitle)
    wiredContact({data,error}){
        if(data){
            this.allContacts=data;
            this.error=undefined;
        }else if(error){
            this.allContacts=undefined;
            this.error=error;
        }
    }





}