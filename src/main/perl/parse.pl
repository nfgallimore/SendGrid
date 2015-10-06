#r/bin/perl
use strict;
use warnings;
 
my $file = $ARGV[0] or die "Need to get CSV file on the command line\n";

open(my $data, '<:encoding(UTF-8)', $file) or die "Could not open '$file' $!\n";
my $msg = "This is a test email message of argv";
while (my $line = <$data>) {
    chomp $line;    
    system('perl email.pl ' . $line);
}
