# TableLookup

look up a row in a table and pull out a particular column from that row

Example:
```c++
TableLookup( "mp/statstable.csv", 0, "INDEX_KILLS", 1 )
```


### Parameters
Parameter | Summary
| - | - |
*filename | The table to look up
*search column num | The column number of the stats table to search through
*search value | The value to use when searching the <search column num>
*return value column num | The column number value to return after we find the correct row

<sub>* = mandatory</sub>

