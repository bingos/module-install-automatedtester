package Module::Install::AutomatedTester;

use strict;
use warnings;
use base qw(Module::Install::Base);
use vars qw($VERSION);

$VERSION = '0.02';

sub auto_tester {
  return if $Module::Install::AUTHOR;
  return 1 if $ENV{AUTOMATED_TESTING};
  return 0;
}

sub cpan_tester {
  &auto_tester;
}

'ARE WE BEING SMOKED?';

__END__


