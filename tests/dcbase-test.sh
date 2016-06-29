PWD=$(pwd)
cd "$PWD"/examples/example-001 && mkdir core
cp -r "$PWD"/modules "$PWD"/examples/example-001/core/modules
cp -r "$PWD"/tests "$PWD"/examples/example-001/core/tests
cp -r "$PWD"/README.md "$PWD"/examples/example-001/core/README.md
cd "$PWD"/examples/example-001 && ./example-script.sh
cd "$PWD"/examples/example-001 && ./example-script.sh usage
cd "$PWD"/examples/example-001 && ./example-script.sh help say-hello-world
cd "$PWD"/examples/example-001 && ./example-script.sh say-hello-world
cd "$PWD"/examples/example-001 && ./example-script.sh say-hello-world --type=caps
cd "$PWD"/examples/example-001 && ./example-script.sh say-hello-world --type=caps --simulation-mode=true
cd "$PWD"/examples/example-001 && ./example-script.sh self-test
