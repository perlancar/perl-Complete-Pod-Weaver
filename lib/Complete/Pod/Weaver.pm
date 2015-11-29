package Complete::Pod::Weaver;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;
#use Log::Any '$log';

use Complete::Common qw(:all);

our %SPEC;
require Exporter;
our @ISA       = qw(Exporter);
our @EXPORT_OK = qw(
                       complete_weaver_plugin
                       complete_weaver_section
                       complete_weaver_bundle
                       complete_weaver_role
               );

$SPEC{':package'} = {
    v => 1.1,
    summary => 'Pod::Weaver-related completion routines',
};

$SPEC{complete_weaver_plugin} = {
    v => 1.1,
    summary => 'Complete with installed Pod::Weaver plugin names',
    args => {
        %arg_word,
    },
    result_naked => 1,
};
sub complete_weaver_plugin {
    require Complete::Module;

    my %args = @_;

    my $word = $args{word} // '';

    Complete::Module::complete_module(
        word => $word,
        ns_prefix => 'Pod::Weaver::Plugin',
    );
}

$SPEC{complete_weaver_section} = {
    v => 1.1,
    summary => 'Complete with installed Pod::Weaver::Section names',
    args => {
        %arg_word,
    },
    result_naked => 1,
};
sub complete_weaver_section {
    require Complete::Module;

    my %args = @_;

    my $word = $args{word} // '';

    Complete::Module::complete_module(
        word => $word,
        ns_prefix => 'Pod::Weaver::Section',
    );
}

$SPEC{complete_weaver_role} = {
    v => 1.1,
    summary => 'Complete with installed Pod::Weaver role names',
    args => {
        %arg_word,
    },
    result_naked => 1,
};
sub complete_weaver_role {
    require Complete::Module;

    my %args = @_;

    my $word = $args{word} // '';

    Complete::Module::complete_module(
        word => $word,
        ns_prefix => 'Pod::Weaver::Role',
    );
}

$SPEC{complete_weaver_bundle} = {
    v => 1.1,
    summary => 'Complete with installed Pod::Weaver bundle names',
    args => {
        %arg_word,
    },
    result_naked => 1,
};
sub complete_weaver_bundle {
    require Complete::Module;

    my %args = @_;

    my $word = $args{word} // '';

    Complete::Module::complete_module(
        word => $word,
        ns_prefix => 'Pod::Weaver::PluginBundle',
    );
}

1;
#ABSTRACT:

=head1 SYNOPSIS
