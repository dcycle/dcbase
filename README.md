dcBase
-----

dcBase is a bash script framework starterkit.

[![CircleCI](https://circleci.com/gh/dcycle/dcbase.svg?style=svg)](https://circleci.com/gh/dcycle/dcbase)

     ______   ______    _______   ________   ______   ______
    /_____/\ /_____/\ /_______/\ /_______/\ /_____/\ /_____/\
    \:::_ \ \\:::__\/ \::: _  \ \\::: _  \ \\::::_\/_\::::_\/_
     \:\ \ \ \\:\ \    \::(_)  \/_\::(_)  \ \\:\/___/\\:\/___/\
      \:\ \ \ \\:\ \____\::  _  \ \\:: __  \ \\_::._\:\\::___\/_
       \:\/.:| |\:\____/\\::(_)  \ \\:.\ \  \ \ /____\:\\:\____/\
        \____/_/ \_____\/ \_______\/ \__\/\__\/ \_____\/ \_____\/

Usage
-----

    cd /path/to/my-script
    ./example-script.sh
    ./example-script.sh usage
    ./example-script.sh help say-hello-world
    ./example-script.sh say-hello-world
    ./example-script.sh say-hello-world --type=caps
    ./example-script.sh say-hello-world --type=caps --simulation-mode=true
    # Requires Docker for linting
    ./example-script.sh self-test

Defining commands with preflight and arguments
-----

Commands are defined in modules. The included "my-module" defines the command "say-hello-world" through the contents of the following directory:

    ./script/modules/my-module/commands/say-hello-world

Script developers are encouragd to create their own modules as siblings of my-module by using the same structure as my-module. Modules can have any number of commands.

Core commands such as self-test are defined within the ./core folder and script developers are encouraged to not modify these, or if they need to, file a ticket with https://github.com/dcycle/dcbase/issues. An example of a core command is:

    ./core/modules/development/commands/self-test

Steps to creating your own script
-----

* Fork or get a copy of this code
* Put your own header in ./script/modules/header/files/header.txt
* Change the name of ./example-script.sh, ./tests/example-script, ./tests/example-script.test.sh
* Search and replace all occurrences of example-script.sh in the code
* Put usage instructions in ./script/modules/help/help.txt
* Change ./README.md file, you can add "Built with [dcBase](https://github.com/dcycle/dcbase)." there.
* Change the name of ./script/modules/my-module, ./script/modules/my-module/commands/say-hello-world and ./script/modules/my-module/commands/say-hello-world/say-hello-world.source.sh
