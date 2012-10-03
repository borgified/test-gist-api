#!/usr/bin/perl

use warnings;
use strict;

use WWW::GitHub::Gist;

my %config = do '/secret/github.config';

my $gist = WWW::GitHub::Gist->new(
	id			=> '35c55314836bf526a95a',
#	user		=> $config{'username'},
#	password	=> $config{'password'},
);

# Fetch and print information
my $gist_info = $gist -> show;

# Show files
my $files = $gist_info -> {'files'};
 
foreach my $file (keys %$files) {
  print  $files -> {$file} -> {'filename'};
  print  $files -> {$file} -> {'content'};
}

__END__
my $new_gist_info = $gist -> create(
		description => 'squadname',
		public => 0,
		files => {'test' => 'new'}
		);

foreach my $key (keys %$new_gist_info){
	print "key: $key\t value: $$new_gist_info{$key}\n";
}


