FIND {United} 

FIND {United} IN ALL FIELDS

FIND {United} IN NAME FIELDS

FIND {United} IN NAME FIELDS RETURNING Account(Name)


FIND {United} IN NAME FIELDS RETURNING Account(Name,AnnualRevenue)


FIND {United} IN NAME FIELDS RETURNING Account(Name,AnnualRevenue) , Contact(FirstName)


FIND {United} IN NAME FIELDS RETURNING Account(Name,AnnualRevenue) , Contact(FirstName, Email)

FIND {Jon} IN NAME FIELDS RETURNING Account(Name,AnnualRevenue) , Contact(FirstName, Email), Lead (FirstName)
