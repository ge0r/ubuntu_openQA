use base 'basetest';
use strict;
use testapi;

sub run{
	assert_and_click 'try_ubuntu_btn' if check_var('INSTALL_TYPE', 'try'); # 30 second by default
	assert_and_click 'install_ubuntu_btn' if check_var('INSTALL_TYPE', 'install'); # 30 second by default
}

# you always have to end with 1 for some reason
1;
