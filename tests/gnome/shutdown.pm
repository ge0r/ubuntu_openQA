use base 'basetest';
use strict;
use testapi;

sub run{

	# Click on the right up corner
	assert_and_click 'gnome_out', 'left', 5;

	# Click on the Turn-Off icon
	assert_and_click 'gnome_shutdown';

	# Select the power-off
	assert_and_click 'gnome_shutdown_ok';

	# In case of LIVE-DVD click Enter
	assert_screen 'medium';
	send_key 'ret';

	# Make sure the VM is dead
	assert_shutdown(300);
}

# you always have to end with 1 for some reason
1;
