import { LightningElement, wire } from "lwc";
import getMaxOppAmount from "@salesforce/apex/AccountController.getMaxOppAmount";

export default class Practice20 extends LightningElement {

    highestOppAmount; 
    error; 

    /**
     * {
     *  data: some data goes here if return successfully
     *  error : if you have error 
     * }
     */
    @wire(getMaxOppAmount)
    wiringIntoThisMethodParam({ data, error} ) { // destruct the wired result into 2 variables data, error
        
        
        console.log(data); 

        if (data) {
            this.highestOppAmount = data; 
            this.error = undefined; 
        } else if (error) {
            this.error = error; 
            this.highestOppAmount = undefined; 
        }

    }


    // wire the result of apex method into function parameter  
    // @wire(getMaxOppAmount)
    // wiringUsingMethod( result ) {
        
    //     console.log(result); 

    //     if (result.data) {
    //         this.highestOppAmount = result.data; 
    //         this.error = undefined; 
    //     } else if (result.error) {
    //         this.error = result.error; 
    //         this.highestOppAmount = undefined; 
    //     }

    // }

    // wire the result of apex method into property 
    // @wire(getMaxOppAmount)
    // highestOppAmount; 

    // get the wired data in prettified string format
    // to understand the structure of what we got
    // get highestOppAmountInstr() {
    //     return JSON.stringify(this.highestOppAmount, null, 2);
    // }

}