//practice-1
List<String> names=new List<String> {'John', 'Ken', 'Mary'};

for(String eachName : names)
{System.debug(eachName);}

//practice-2
List<Integer> numbers=new List<Integer> {2,4,6,8};

for(Integer eachNumber : numbers)
{System.debug(eachNumber);}

//practice-3
Set<Decimal> prices=new Set<Decimal> {4.00, 6.99, 8.50, 3.25};
    prices.add(0.99);
    prices.add(6.99);
System.debug(prices);

for(Decimal eachPrices : prices)
{System.debug(eachPrices);}

//sum
Decimal sum=0;
for(Decimal eachPrices : prices){
    sum+=eachPrices;}
System.debug('Total is ' + sum);








