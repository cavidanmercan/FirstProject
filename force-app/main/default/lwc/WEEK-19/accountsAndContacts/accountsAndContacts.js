import { LightningElement, wire } from "lwc";

import accountsAndContacts from "@salesforce/apex/practice.accountsAndContacts"

export default class AccountsAndContacts extends LightningElement {
  accList;
  conList;
  error;

  accColumns = [
    { label: "Id", fieldName: "Id" },
    { label: "Account Name", fieldName: "Name" },
    { label: "Website", fieldName: "Website" }
  ];

  conColumns = [
    { label: "Id", fieldName: "Id" },
    { label: "Contact Name", fieldName: "Name" },
    { label: "Email", fieldName: "Email" }
  ];


  @wire(accountsAndContacts)
  objectList({data,error}){
    if(data){
        this.accList=data[0];
        this.conList=data[1];
        this.error=undefined;
    }
    else if(error){
        this.error=error;
        this.accList=undefined;
        this.conList=undefined;
    }
  }
}