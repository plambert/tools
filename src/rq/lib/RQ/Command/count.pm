package RQ::Command::count;

use strict;
use warnings;
use 5.016;
use lib "./lib";
use RQ -command;

sub abstract { "Count queue size" }
sub description { "Count the current size of the queue." }
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
