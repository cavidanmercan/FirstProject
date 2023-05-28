//task1
<template>
    <lightning-card title="Job List" icon-name="custom:custom68">
      <div class="slds-var-m-around_medium">
        <!-- search box -->
        <lightning-input
          type="search"
          label="Search Job"
          placeholder="type here..."
          value={searchKey}
          onchange={handleSearchKeyChange}
        ></lightning-input>
      


      <template lwc:if={searchKey}>
        <p>You are searching for {searchKey}</p>
      </template>
  
      <br>

      <lightning-datable
        key-field="jobId"
        data={filteredJobs}
        columns={columns}>
     </lightning-datable>
      
  
  
      </div>
    </lightning-card>
  </template>
  

  //js

  import { LightningElement } from "lwc";
export default class task1 extends LightningElement {

    searchKey = ''; 

    columns = [
        { label: 'Job Title', fieldName: 'jobTitle' },
        { label: 'Location', fieldName: 'location' },
        { label: 'Salary', fieldName: 'salary' },
    ];

    
    jobs = [
        { jobId: 1, jobTitle: 'Salesforce Administrator', location: 'San Francisco', salary: 95000 },
        { jobId: 2, jobTitle: 'Salesforce Developer', location: 'New York', salary: 140000 },
        { jobId: 3, jobTitle: 'Salesforce Architect', location: 'Chicago', salary: 150000 },
        { jobId: 4, jobTitle: 'Salesforce Consultant', location: 'Los Angeles', salary: 100000 },
        { jobId: 5, jobTitle: 'Salesforce Project Manager', location: 'Seattle', salary: 110000 },
        { jobId: 6, jobTitle: 'Salesforce Data Analyst', location: 'Austin', salary: 80000 },
        { jobId: 7, jobTitle: 'Salesforce Solutions Engineer', location: 'Dallas', salary: 120000 },
        { jobId: 8, jobTitle: 'Salesforce Technical Lead', location: 'Boston', salary: 160000 },
        { jobId: 9, jobTitle: 'Salesforce Systems Analyst', location: 'Miami', salary: 90000 },
        { jobId: 10, jobTitle: 'Salesforce Product Manager', location: 'Denver', salary: 115000 },
      ];
    filteredJobs = this.jobs; 


    handleSearchKeyChange(event) {
        this.searchKey = event.target.value;
    
        this.filteredJobs = this.jobs.filter(each =>
            each.jobTitle.toLowerCase().includes( this.searchKey.toLowerCase() )
        );
    }


}


//task2

<template>
  <lightning-card title="Task1 - jobTable" icon-name="custom:custom34">
    <div class="slds-var-m-around_medium">
      <!-- search box -->
      <lightning-input
        type="search"
        label="Search Job"
        placeholder="type here..."
        value={searchKey}
        onchange={handleSearchKeyChange}
      ></lightning-input>
    
      <!-- conditionally display a paragraph element
      to show what user typed-->
    <template lwc:if={searchKey}>
      <p>You are searching for {searchKey}</p>
    </template>

    
    
    <!-- Display foodArray in div tag with slds-box class -->
    <br>

    <template for:each={filteredJobs} for:item="each">

        <!-- very first element after foreach directive must have 
        a attribute called key and point to unique identifier to each element in the array
        since each element here is object, we can access the field value using 
         each.theFieldName -->
        <div key={each.id} class="slds-box slds-box_x-small" >
            The Food : {each.jobTitle} | Location is  {each.location} | 
            salary is  {each.salary}
        </div>

    </template>


    </div>
  </lightning-card>
</template>


//js

import { LightningElement } from "lwc";
export default class Task1 extends LightningElement {

    searchKey = ''; 

    jobs = [
        { jobId: 1, jobTitle: 'Salesforce Administrator', location: 'San Francisco', salary: 95000 },
        { jobId: 2, jobTitle: 'Salesforce Developer', location: 'New York', salary: 140000 },
        { jobId: 3, jobTitle: 'Salesforce Architect', location: 'Chicago', salary: 150000 },
        { jobId: 4, jobTitle: 'Salesforce Consultant', location: 'Los Angeles', salary: 100000 },
        { jobId: 5, jobTitle: 'Salesforce Project Manager', location: 'Seattle', salary: 110000 },
        { jobId: 6, jobTitle: 'Salesforce Data Analyst', location: 'Austin', salary: 80000 },
        { jobId: 7, jobTitle: 'Salesforce Solutions Engineer', location: 'Dallas', salary: 120000 },
        { jobId: 8, jobTitle: 'Salesforce Technical Lead', location: 'Boston', salary: 160000 },
        { jobId: 9, jobTitle: 'Salesforce Systems Analyst', location: 'Miami', salary: 90000 },
        { jobId: 10, jobTitle: 'Salesforce Product Manager', location: 'Denver', salary: 115000 },
      ];
    // initialize the value with same value as foodArray
    filteredJobs = this.jobs; 


    handleSearchKeyChange(event) {
        this.searchKey = event.target.value;
        // filter the foodArray according to searchKey 
        // and assign it to the filteredFoods
        this.filteredJobs = this.jobs.filter(each =>
            each.jobTitle.toLowerCase().includes( this.searchKey.toLowerCase() )
        );
    }

}

/**
 let filteredFoods = foodArray.filter(each =>
    each.foodName.toLowerCase().includes( searchKey.toLowerCase() )
);

 */