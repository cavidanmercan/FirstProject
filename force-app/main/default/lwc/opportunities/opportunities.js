import { LightningElement, wire } from 'lwc';

import oppLessThanAmount from "@salesforce/apex/practice.oppLessThanAmount"

export default class Opportunities extends LightningElement {

    searchKey=25000;
    Opportunities;
    error;

     columnsList = [
    { label: "Id", fieldName: "Id" },
    { label: "Opp Name", fieldName: "Name" },
    { label: "Amount", fieldName: "Amount" }
  ];

  handleSearch(event){
    this.searchKey=event.target.value;
  }

  @wire(oppLessThanAmount, {amount: '$searchKey'})
  opps({data,error}){
    if(data){
        this.Opportunities=data;
        this.error=undefined;
    }
    else if(error){
        this.error=error;
        this.Opportunities=undefined;
    }
  }

}