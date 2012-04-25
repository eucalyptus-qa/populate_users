#!/usr/bin/perl
use strict;

my $account_limit = 4;
my $user_limit = 4;

if( @ARGV > 0 ){
	my $temp = shift @ARGV;
	if( $temp =~ /\d+/){
		$account_limit = $temp;
	};
};

if( @ARGV > 0 ){
	my $temp = shift @ARGV;
	if( $temp =~ /\d+/){
		$user_limit = $temp;
	};
};


print "\n";
print "Populating Accounts and Users\n";
print "\n";
print "[ACCOUNT LIMIT]\t$account_limit\n";
print "[USER LIMIT]\t$user_limit\n";
print "\n";

print "\n";
print "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n";
print "Create Default Account and User\n";
print "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n";
print "\n";

system("perl ./create_account_and_user.pl");

for( my $i = 0; $i < $account_limit; $i++){
	for( my $j = 0; $j < $user_limit; $j++){
		my $account = "account" . sprintf("%02d", $i);
		my $user = "user" . sprintf("%02d", $j);

		print "\n";
		print "\n";
		print "\n";
		print "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n";
		print "Create Account \'$account\' and User \'$user\'\n";
		print "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n";
		print "\n";
		print "\n";
		system("perl ./create_account_and_user.pl $account $user");
		print "\n";
	};
};

exit(0);

1;


