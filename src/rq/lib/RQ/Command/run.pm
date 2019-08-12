package RQ::Command::run;

use strict;
use warnings;
use 5.016;
use lib "./lib";
use RQ -command;

sub abstract { "Run a command with a queue entry." }
sub description { "Takes an eligible entry from the queue, and runs the given command with it.  Marks the task complete if the command is successful, otherwise aborts the task." }
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
