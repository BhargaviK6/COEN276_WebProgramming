#!/usr/bin/perl
#
#
#
#
#Mani Bhargavi Ketha
#W1186016
#perl-file:             mytranslator.pl
#input-csv-file:        cell-phones.csv
#output-html-file:      cell-phones_W1186016.html
#
#
#
#
my $iosuser;
my $windowsuser;
my $androiduser;
my $iosuser1;
my $windowsuser1;
my $androiduser1;
#creating global variables to store the sume of users for each type of phone
#need it to be global else we can't access variables outside of while loop due to limited scope

$file_name = 'cell-phones.csv';
#name of file from where we are reading the data and parsing it
    
open(INPUT, $file_name) or die "Cannot open $filename";
#opening the file to readfrom
open(OUTPUT,">cell-phones_W1186016.html") or die "Cannot open ";
#creating the output file in which the .html will be generated

#creating Functions to structure my program
parsingFile();
formatUserTotal();
createHTMLOutput($iosuser1,$androiduser1,$windowsuser1);
closeFiles();

sub parsingFile
        {
            
            #using filehandle operator to read information from the file line by line
            $line = <INPUT>;
            while($line = <INPUT>)
                {
                
                    next if($line =~m/#/);
                    #Checking if the line is comment and if so go to next line
                    chomp($line);
                    #removing the end of line characters using chomp function
                    ($school, $cellType, $users) = split(',', $line);
                    #using split function divide the input line where there are commas and store them in three different variables
                    #using regex to check type of cellphone and adding to global variables to compute sum of type of users
                    if($cellType=~m"ios")
                        {
                            $iosuser=$iosuser+$users;
                        }
                    if($cellType=~m"windows")
                        {
                            $windowsuser=$windowsuser+$users;
                        }
                    if($cellType=~m"android")
                        {
                            $androiduser=$androiduser+$users;
                        }
                
                }
        
        }

sub formatUserTotal
        {
           
            $iosuser1=$iosuser/10;
            $androiduser1=$androiduser/10;
            $windowsuser1=$windowsuser/10;

            
            
            #formatting the output in order to display for the svg element
        
        }

sub createHTMLOutput
        {
            
           
            #printing html with inline css and svg elements through svg tag in OUTPUT filehandle operator
            #Saving the below code in the form of cell-phones_W1186016.html
            print OUTPUT "<!DOCTYPE html>";
            print OUTPUT "<html>";
            print OUTPUT "<head>";
            print OUTPUT "<title>Phone Users Statistics</title>";
            print OUTPUT "</head>";
            print OUTPUT "<body bgcolor=#D0D0D0>";
            print OUTPUT "<title>HTML Report</title>";
            print OUTPUT "<div align='center' style='position:fixed; top:20%;bottom:20%;left:20%;right:20%;border:groove;background=#D0D0D0'>";
            print OUTPUT "<h1 style='font-family:Georgia;'>Phone User Statistics</h1>";
            print OUTPUT "<svg width='500' height='500' align:center;>";
            #Creating a horizontal bar graph
            
            print OUTPUT " <rect width='$iosuser1' height='29' y='60' x='50' style='fill:#404E7C;font-family:Georgia;'/>";
            print OUTPUT "<text  y='75' x='50' dy='.35em'>iOS Users</text>";
           
            print OUTPUT " <rect width='$windowsuser1' height='29' y='100' x='50' style='fill:#5F74B7;font-family:Georgia;' />";
            print OUTPUT "<text  y='115' x='50' dy='.35em' >Windows Users</text>";
           
            print OUTPUT " <rect width='$androiduser1' height='29' y='140' x='50' style='fill:#404E7C;font-family:Georgia;' />";
            print OUTPUT "<text  y='155' x='50' dy='.35em'>Android Users</text>";
            print OUTPUT "</svg>";
            
            print OUTPUT "</div>";
            print OUTPUT "</body>";
            print OUTPUT "</html>";
        }

sub closeFiles
        {
            #closing both the files
            close(INPUT);
            close(OUTPUT);
        }




