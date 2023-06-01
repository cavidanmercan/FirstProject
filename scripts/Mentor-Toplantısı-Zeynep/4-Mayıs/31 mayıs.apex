//! TrailblazerRank HTML

<template>
  <!-- create a component that has a lightning-card and two input fields, badges and points -->
  <!-- if badges >100 and points >50000 write 'Trailblazer is a RANGER' -->

  <lightning-card title="Trailblazer Rank" icon-name="utility:favorite">
    <div class="slds-var-m-around_medium">
      <lightning-input
        type="number"
        label="Badges"
        placeholder="Badges"
        onchange={handleBadgeChange}
      ></lightning-input>
    </div>
    <div class="slds-var-m-around_medium">
        <lightning-input
          type="number"
          label="Points"
          placeholder="Points"
          onchange={handlePointChange}
        ></lightning-input>
      </div>

      <template lwc:if={isRanger}>

        <div class="slds-align_absolute-center">

            <p>Trailblazer is a RANGER</p>

        </div>


      </template>

  </lightning-card>
</template>


//! TrailblazerRank JS
import { LightningElement } from 'lwc';

export default class TrailblazerRank extends LightningElement {

badges=0;
points=0;

handleBadgeChange(event){
    this.badges=event.target.value;
}

handlePointChange(event){
    this.points=event.target.value;
}

get isRanger(){
    return this.badges>100 && this.points>50000;
}

}



//! TrailblazerList HTML

<!-- sldsValidatorIgnore -->
<template>
  <lightning-card title="Trailblazer List" icon-name="standard:account">
    <div>
      <lightning-input
        type="search"
        label="Search Trailblazer"
        placeholder="type first name"
        onchange={handleSearchKeyChange}
      ></lightning-input>

      <template lwc:if={searchKey}>

        <p>You are searching for {searchKey}</p>

      </template>

      <br>

      <lightning-datatable
        key-field="id"
        data={filteredTrailblazer}
        columns={columns}>
    </lightning-datatable>

    </div>
  </lightning-card>
</template>




//! TrailblazerList JS

import { LightningElement } from 'lwc';

export default class TrailblazerList extends LightningElement {


    searchKey="";

    columns = [
        { label: 'Id', fieldName: 'id' },
        { label: 'First Name', fieldName: 'firstName' },
        { label: 'Last Name', fieldName: 'lastName' },
        { label: 'Badges', fieldName: 'badges' },
        { label: 'Points', fieldName: 'points' },
    ];

    trailblazerArray = [{id: 1, firstName: 'Ben', lastName: 'Long', badges: 300, points: 189000},
                        {id: 2, firstName: 'Dan', lastName: 'Good', badges: 200, points: 150000},
                        {id: 3, firstName: 'Josh', lastName: 'Lang', badges: 100, points: 115000},
                        {id: 4, firstName: 'Mike', lastName: 'Al', badges: 425, points: 305000},
                        {id: 5, firstName: 'Liv', lastName: 'White', badges: 300, points: 202000},
                        {id: 6, firstName: 'Steve', lastName: 'Last', badges: 90, points: 107000},
                        {id: 7, firstName: 'Ahmet', lastName: 'Ay', badges: 440, points: 289000},
                        {id: 8, firstName: 'Ivy', lastName: 'Poison', badges: 175, points: 180000}];

    filteredTrailblazer=this.trailblazerArray;

    handleSearchKeyChange(event){

        this.searchKey=event.target.value;

        this.filteredTrailblazer=this.trailblazerArray.filter(each=>each.firstName.toLowerCase().includes(this.searchKey.toLowerCase()));
        





    }



}