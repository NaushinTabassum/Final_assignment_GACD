# Final_assignment_GACD

1. At the first step, all the .txt files containing the test and training datasets, their labels and corresponding subject ID, activity code and corresponding labels, features were read using the "read.table" function. It converted all these txt files into dataframes.

2. For both test and traing data, the sets, labels and subject IDs were binded by columns using "bind_col" function and the resulting test and training datasets were binded by row using "rbind" function and thus forming the dataset "combo" which has 10299 rows and 563 columns.

3. The features dataset has 561 rows which correspond to the variables of the "combo" dataset. They were set as the column names using "names" function. Rest of the two columns were named separately as "activity" and "subjectid".

4. Using the "grep" function with pattern ".*mean()|std()" only those variables were selected that contain the mean or standard deviation value of the corresponding data. This filtered column names were stored in a vector called "meanstd".

5. Using the "select" function from the "dplyr" package only the columns in the "meanstd" vector and "activity" and "subjectid" columns were selected and assigned to another data frame called "combo1".

6. To standardize the variable names all of their letters were converted into lower case using "tolower" function and the "-" and "()" symbols were removed using the "gsub" function.
N.B. use "\\()" while removing "()" symbol.

7. The "activity" column in "combo1" has been in character form. It was turned into numeric form using "as.numeric" function.

8. Using a for loop all the numeric values in the "activity" column were replaced with their corresponding labels as defined in the "activity_labels.txt".

9. "combo1" dataset was grouped by the activity and subject ID respectively using the "group_by" function and the resulting dataset was assigned to a data frame named "combo2".

10. The "summarise_all" function was used on the "combo2" grouped dataset using "mean" as the argument (and na.rm=TRUE) to get the average of all the variables for each of the 180 groups and the resulting tibble structure was assigned to an object called "summary".

11. The 'summary' tibble was converted into a data frame "tidyset" using "as.data.frame" function.

12. Finally, a txt file "tidydata.txt" created with "write.table" function using row.name=FALSE. And, that is the resulting tidy dataset.
