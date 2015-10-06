#!/usr/bin/perl
use strict;
use MIME::Entity;
use Net::SMTP;
use warnings;

# from is your email address
# to is who you are sending your email to
# subject will be the subject line of your email
my $from = 'sales@studentsofstrength.com';
my $to = $ARGV[0];
my $subject = 'Students of Strength';
my $text = 'Hi this is a working test, and I hope it works!';

# Create the MIME message that will be sent. Check out MIME::Entity on CPAN for more details
my $mime = MIME::Entity->build(Type  => 'multipart/alternative',
                            Encoding => '-SUGGEST',
                            From => $from,
                            To => $to,
                            Subject => $subject
    );
# Create the body of the message (a plain-text and an HTML version).
# text is your plain-text email
# html is your html version of the email
# if the reciever is able to view html emails then only the html
# email will be displayed

# attach the body of the email
$mime->attach(Type => 'text/plain',
            Encoding =>'-SUGGEST',
	      Data => $text);

# Login credentials
my $username = 'studentsofstrength';
my $password = "sosmenow2015";

# Open a connection to the SendGrid mail server
my $smtp = Net::SMTP->new('smtp.sendgrid.net',
                        Port=> 587,
                        Timeout => 20,
			  Hello => "studentsofstrength.com");

# Authenticate
$smtp->auth($username, $password);

# Send the rest of the SMTP stuff to the server
$smtp->mail($from);
$smtp->to($to);
$smtp->data($mime->stringify);
$smtp->quit();
