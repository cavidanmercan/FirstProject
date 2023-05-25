/*8. Create a Contact variable and assign value along with below fields 
   - LastName, birthDate
   - insert it into Salesforce 
   - check if today is the birthday of this Contact according to birthDate field value
      - print 'It's your Birthday Today, Tada! '
      - else print 'It's not your Birthday Today'
      - Hint : birthday means the date has same month and year as Today's date*/


Contact c1 = new Contact(LastName = 'Snow',
                         birthDate = Date.newInstance(2016, 3, 2));

insert c1;

if ( c1.birthDate.day()   == Date.today().day() &&
     c1.birthDate.month() == Date.today().month()){
  System.debug('It\'s your Birthday Today, Tada!');
} else {
  System.debug('It\'s not your Birthday Today');
}