#!/usr/bin/perl -w  
  
#  
# Reads DBM file, printing entries.  
#   
# Usage:  
#  Perl sdbm2.pl database  

use SDBM_File;  
use Fcntl;  
  
# Print format for STDOUT.  
format STDOUT=  
@<<<<<<<<<<<<<<<<<<<<<<  @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<  
$key, $value  
.  
  
  
format STDOUT_TOP=  
Program        File Name            page @<<<  
$%  
.  
  
  
$database  = $ARGV[0];  
  
  
# Open DBM database.  
  
$mode = 0666;  
  
$flags =  O_RDONLY | binary(); 
  
tie(%execs, 'SDBM_File', $database, $flags, $mode)   
   or die  
  "Can't open \"$database\" due to $!";  
  
  # Process entries.  
while ( ($key,$value) = each(%execs) ) {  
  
    write;  
}  
  
# Close database.  
untie(%execs);  



# Subroutine to return
# O_BINARY value on Windows,
# and nothing if not on Windows.
#
sub binary() {
  return O_BINARY if is_windows();
}

#
# Subroutine to detect if running under
# Windows.
#
sub is_windows() {
    return $^O =~ /^(MS)?Win/;
}
  
# sdbm2.pl  
