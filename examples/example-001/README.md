Dcycle Metrics Engine
=====

Generates code metrics from these providers:

 * [PhpMD](https://phpmd.org)
 * [ShellCheck](https://github.com/koalaman/shellcheck)

And outputs metrics in these formats:

 * raw output from each provider

Dependencies
-----

 * Docker

Usage
-----

    cd ./dcycle-metrics-engine
    ./dcycle-metrics-engine.sh --source=/path/to/repo --destination=/path/to/metrics
    cat /path/to/metrics/metrics/raw/phpmd/*xml
    cat /path/to/metrics/metrics/raw/shellcheck/*xml

Testing
-----

    ./test.sh

Continuous integration
-----

Travis CI is used for automated tests. Build status is:

[![Build Status](https://travis-ci.org/alberto56/dcycle-metrics-engine.svg?branch=master)](https://travis-ci.org/alberto56/dcycle-metrics-engine)
