     ______   ______    _______   ________   ______   ______
    /_____/\ /_____/\ /_______/\ /_______/\ /_____/\ /_____/\
    \:::_ \ \\:::__\/ \::: _  \ \\::: _  \ \\::::_\/_\::::_\/_
     \:\ \ \ \\:\ \    \::(_)  \/_\::(_)  \ \\:\/___/\\:\/___/\
      \:\ \ \ \\:\ \____\::  _  \ \\:: __  \ \\_::._\:\\::___\/_
       \:\/.:| |\:\____/\\::(_)  \ \\:.\ \  \ \ /____\:\\:\____/\
        \____/_/ \_____\/ \_______\/ \__\/\__\/ \_____\/ \_____\/


dcBase is a bash script framework sponsored.

Installation
-----

    mkdir -p /path/to/my-script
    cd /path/to/my-script
    git init
    git submodule add ../dcbase/core/ core
    cp -r core/examples/example-001/* .
    git add .
    git commit -am 'Initial commit'

Updating dcBase in your script
-----

    cd /path/to/my-script/core
    git pull origin master
    cd ../
    git commit -am 'Updated dcBase'
