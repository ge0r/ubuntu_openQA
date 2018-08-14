use base 'basetest';
use strict;
use testapi;

sub run{
	assert_screen 'welcome', 45;
	

	#mouse_hide;
}

# you always have to end with 1 for some reason
1;
