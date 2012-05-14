#!/usr/bin/perl
package main;

use strict;
use warnings;
use WWW::TrainInfo::JREast;
use YAML;

my @target_areas = qw(k t);
my $jr = WWW::TrainInfo::JREast->new(
  notify_no_delay => 1,
  area => [@target_areas]
);

$jr->get_info();
warn YAML::Dump $jr->{records};

for (@{$jr->get_delay}){
  warn "delay $_->{line_name}";
}

for (@{$jr->get_stop}){
  warn "stop $_->{line_name}";
}

for (@{$jr->get_cancel}){
  warn "cancel $_->{line_name}";
}
