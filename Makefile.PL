#!/usr/bin/perl
# $Id: Makefile.PL,v 1.8 2006/05/16 16:01:19 gavin Exp $
use ExtUtils::MakeMaker;
use strict;

my $version_ok = 0;
eval {
	require 5.8.0;
	$version_ok = 1;
};

if ($version_ok < 1) {
	print STDERR "This module requires Perl 5.8.0 or later!\n";
	exit 1;
}

WriteMakefile(
    'NAME'			=> 'Gtk2::Ex::PodViewer',
    'VERSION_FROM'		=> 'lib/Gtk2/Ex/PodViewer.pm',
    'PREREQ_FATAL'		=> 1,
    'PREREQ_PM'			=> {
    	'Gtk2'			=> 0,
    	'Pod::Parser'		=> 0,
    	'IO::Scalar'		=> 0,
    	'File::Basename'	=> 0,
    	'Locale::gettext'	=> 0,
    	'Pod::Simple::Search'	=> 0,
    },
    'EXE_FILES'			=> [ 'src/podviewer' ]
);
