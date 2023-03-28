-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
Select Type, Name, Price, Description
From Dishes
Order By Price;
-- Create a report showing appetizers and beverages.
Select Type, Name, Price, Description
From Dishes
Where Type in ('Appetizer','Beverage')
Order By Type;
-- Create a report with all items except beverages.
Select Type, Name, Price, Description
From Dishes
Where Type Not IN ('Beverage')
Order By Type;