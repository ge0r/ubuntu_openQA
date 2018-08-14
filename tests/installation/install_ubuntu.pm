use base 'basetest';
use strict;
use testapi;

sub run{
	assert_and_click 'continue_btn'; # 30 second by default

	# erase disk and install Ubuntu 
	assert_and_click 'install_now_butn'; # 30 second by default
	
	# write changes on disk
	assert_and_click 'continue_writing_btn'; # 30 second by default

	# choose berlin timezone
	assert_and_click 'choose_timezone'; # 30 second by default

	# click continue with timezone
	assert_and_click 'choose_timezone_btn'; # 30 second by default
	
	# click continue with language
	assert_and_click 'choose_language_btn'; # 30 second by default

	# gain focus in user creation box
	assert_and_click 'focus'; # 30 second by default

	# insert username and password
	type_string "tux";	
	send_key('tab');
	send_key('tab');
	type_string "tux";	
	send_key('tab');
	type_string "tux";	
	send_key('tab');
	type_string "tux";	
	send_key('tab');
	
	# continue with created user
	assert_and_click 'continue_user_btn'; # 30 second by default

	# bored of waiting this to finish, wake me up when installation window dissapears
	while (check_screen('installation_window_on', 1)) {
		next;
	}
	
	# click restart button
        assert_and_click 'restart_now_btn'; # 30 second by default
	
	assert_screen 'press_enter_screen';
	
	sleep 4;

	# remove installation medium
	# eject_cd;

	# sleep 4;
	# and press enter key
	
	send_key "ctrl-alt-f3";
        send_key "ctrl-alt-delete";
	sleep 10;
	power('reset');

	assert_and_click 'gnome_out';

	# Click on the Turn-Off icon
	assert_and_click 'gnome_shutdown';

	# Select the Power-Off
	assert_and_click 'gnome_shutdown_ok';

	# Last messages that appear
	if (check_var('INSTALL_TYPE', 'try')) {
		assert_screen 'medium';
		send_key 'ret';
	}

	# Make sure the VM it's dead
	assert_shutdown(300);
}	

# you always have to end with 1 for some reason
1;
