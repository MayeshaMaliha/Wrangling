# Tidy data
1. In tidy data, each row represents an observation and each column represents a different variable.
2. In wide data, each row includes several observations and one of the variables is stored in the header.

# pivot-longer
1. After importing data, a common next step is to reshape the data into a form useful for the rest of the analysis by tidying it. The tidyr package includes several useful functions for tidying data.
2. The pivot_longer() function converts wide data into tidy data.
3. The first argument of pivot_longer() is the data frame to be reshaped. The second argument specifies the columns containing the values to be moved into a single column.
4. The new column of values is called value by default and the column containing the original names of those columns is called name by default.
5. The values_to and names_to arguments can be used to change the default names of these columns.

# pivot_wider() 
1. The pivot_wider() function converts tidy data into wide data, which can be a useful intermediate step in data tidying.
2. The data frame to be reshaped is the first argument in pivot_wider().
3. The argument names_from tells pivot_wider() which variable will be used for the column names and the argument values_from tells pivot_wider() which variable to use to fill in the values.
4. The tidyr cheat sheet External link is a useful reference for these and other functions.

# separate() 
1. The separate() function splits one column into two or more columns at a specified character that separates the variables.
2. The separate() function takes three arguments (apart from the data): the name of the column to be separated, the names to be used for the new columns, and the character that separates the variables.
3. When there is an extra separation, you can use extra = "merge" to merge the last two variables.

# unite() 
1. The unite() function joins two columns into one.
