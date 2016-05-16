#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use Test::Deep;
use DDG::Test::Goodie;

zci answer_type => 2048;
zci is_cached   => 1;


ddg_goodie_test(
    [qw( DDG::Goodie::Game2048 )],

    'play 2048' => test_zci(
        'Play 2048',
        structured_answer => {

            data => ignore(),

            # data => [{
            #     dimension => 4,
            #     inputNum => 2048
            # }],
            templates => {
                group => "text",
                item => 0,
                options => {
                    content => "DDH.game2048.content"
                },
            }
        }
    ),
    'play 256 7' => test_zci(
        'Play 256',
        structured_answer => {

            data => ignore(),

            # data => [{
            #     dimension => 7,
            #     inputNum => 256
            # }],
            templates => {
                group => "text",
                item => 0,
                options => {
                    content => "DDH.game2048.content"
                },
            }
        }
    ),
    '2048 online' => undef
);

done_testing;