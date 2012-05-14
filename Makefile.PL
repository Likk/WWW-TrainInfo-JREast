use inc::Module::Install;
name 'WWW-TrainInfo-JREast';
all_from 'lib/WWW/TrainInfo/JREast.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
