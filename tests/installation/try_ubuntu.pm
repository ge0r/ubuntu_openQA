use base 'basetest';
use strict;
use testapi;

sub run{
	assert_screen 'generic_desktop'; # 30 second by default
}

# you always have to end with 1 for some reason
1;
