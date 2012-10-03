#!/usr/bin/perl

use warnings;
use strict;

use WWW::GitHub::Gist;

my %config = do '/secret/github.config';

my $gist = WWW::GitHub::Gist->new(
#	id			=> '35c55314836bf526a95a',
#	user		=> $config{'username'},
#	password	=> $config{'password'},
);

my $new_gist_info = $gist -> create(
		public => 0,
		files => {'test' => 'new'}
		);

foreach my $key (keys %$new_gist_info){
	print "key: $key\t value: $$new_gist_info{$key}\n";
}


