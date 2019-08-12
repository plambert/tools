package RQ::Command::abort;

use strict;
use warnings;
use 5.016;
use lib "./lib";
use RQ -command;

sub abstract { "Abort an entry" }
sub description { "Signal a client, if possible, to stop work on an entry, and mark it as unclaimed." }
sub opt_spec {
  return (
    [ "foo|f" => "use foo" ],
    [ "bar|b" => "use bar" ],
  );
}

sub validate_args {
  my ($self, $opt, $args) = @_;
  # # no args allowed but options!
  # $self->usage_error("No args allowed") if @$args;
}

sub execute {
  my ($self, $opt, $args) = @_;
  ...;
}

1;
