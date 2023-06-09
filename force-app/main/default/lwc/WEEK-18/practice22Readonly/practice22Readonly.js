import { LightningElement } from "lwc";
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import PHONE_FIELD from "@salesforce/schema/Account.Phone";

export default class Practice22Readonly extends LightningElement {

    objectApiName = ACCOUNT_OBJECT; 
    // use the account record Id exists in your organization 
    recordId = '001Dn00000UcSFQIA3'; 
    fields = [NAME_FIELD , REVENUE_FIELD,INDUSTRY_FIELD, PHONE_FIELD];

}