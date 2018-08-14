use strict;
use warnings;
use testapi qw(check_var get_var get_required_var set_var);
use needle;
use File::Basename;

# It required openSUSE libraries to use utils and main_common
BEGIN {
    unshift @INC, dirname(__FILE__) . '/../../lib';
}
use utils;
use main_common;

init_main();

if (check_var('INSTALL_TYPE', 'install')){
	loadtest 'installation/boot';
	loadtest 'installation/welcome';
	loadtest 'installation/install_ubuntu';
}

if (check_var('INSTALL_TYPE', 'try')){
	loadtest 'installation/boot';
	loadtest 'installation/welcome';
	loadtest 'installation/try_ubuntu';
	#loadtest 'installation/abort_install';
	loadtest 'gnome/shutdown';
}

1;

