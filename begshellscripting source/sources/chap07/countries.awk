# Awk script to print the number of cell phones in use in each country

BEGIN { FS = "," } # Our data is separated by commas

{ print "Number of cell phones in use in",$1":",$6 }
