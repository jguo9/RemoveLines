use strict;
use warnings;
use Path::Class;
use autodie; # die if problem reading or writing a file

my $file = '西游记s.txt';
open my $info, $file or die "Could not open $file: $!";
my @array = <$info>;
#while( my $line = <$info>)  {   
    #print $line;	
    #last if $. == 3;
#}
close $info;

my $dir = dir("D:/Downloads"); # /tmp
$file = $dir->file("西游记p.txt"); # /tmp/file.txt
# Get a file_handle (IO::File object) you can write to
my $file_handle = $file->openw();
foreach my $line ( @array ) {
    # Add the line to the file
    #$file_handle->print($line . "\n");	
	$file_handle->print($line) if $line !~ /shubao2s/i;
}
close $file_handle;
