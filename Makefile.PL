# $Id: Makefile.PL,v 1.1 1999/02/07 22:23:59 roderick Exp $

use ExtUtils::MakeMaker;

WriteMakefile(
    EXE_FILES		=> ['ftp-upload'],
    NAME		=> 'ftp-upload',
    PREREQ_PM		=> { 'Net::FTP' => 0 },
    VERSION_FROM	=> 'ftp-upload',
);

sub MY::dist_core {
    return q(dist:; @echo "use dpkg-buildpackge, not make dist" >&2; false);
}
