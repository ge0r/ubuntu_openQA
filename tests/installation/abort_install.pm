use base 'basetest';
use strict;
use testapi;

sub run{

	# Click on close window  
	assert_and_click 'close_window', 'left', 55;
	
	# Click on quit 
	assert_and_click 'quit_button', 'left';
	

	# Make sure installation is closed
	assert_screen 'no_window';
}

# you always have to end with 1 for some reason
1;
