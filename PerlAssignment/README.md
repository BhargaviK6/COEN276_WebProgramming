README

COEN 276 Web Programming March 5,2016
Name: Mani Bhargavi Ketha 
Student Id: W1186016


included:
Input file :cell-phones.csv
Perl Program: mytranslator.pl
Output file: cell-phones_W1186016.html
this README



Assignment #3
Perl 

How to Run “mytranslator.pl”:
	In the terminal write the command line of “perl mytranslator.pl” relative to the directory where the input file and program are located. After executing the program a HTML file cell-phones_W1186016.html will be created relative to the path where the other files are located. This html file when opened with a browser will display the svg element describing the phone user statistics.



In my code for the perl program, I have used comments to describe in detail as to exactly what I am doing for each step. I will also summarize what I have done here as well:
	
	I have used functions like parsingFile() and others to structure my program where each function has a different functionality of parsing the input file to generating and closing the output file. I have used the file handle operators to both open and close the input and output files. Then in my while loop I have parsed the input csv file to go through each line. Using regular expressions I have skipped any lines which have a comment and with the split function I have separated the line wherever there is a comma and stored these values into three different variables.

Inside the loop itself, I have used regular expressions to check the second variable and see what type of cellphone it is and then incremented that type of cellphone into a global variable. The reason for using a separate global variable is that it allows us to use this global variable outside of the while loop. 

Then in the other functions I have generated a html file with the html syntax inside a perl print statement. To make this html file print in the output file I have used the OUTPUT I have used perviously in the file handle operator else the html file will not be generated in the output. In my html output I have created a svg using the svg tag where I have given inline styling and attributes. My svg is a horizontal bar graph with the height being the same for each individual bar. In order to get the different width for each bar I have formatted the user output by dividing it by half so that the relative size is achieved in order to give a better view of the statistics.
At the very end I have closed both the input and output files.  

