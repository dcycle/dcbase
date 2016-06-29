BASE=$(pwd)
cd "$BASE"/examples/example-001 && mkdir core
cp -r "$BASE"/modules "$BASE"/examples/example-001/core/modules
cp -r "$BASE"/tests "$BASE"/examples/example-001/core/tests
cp -r "$BASE"/README.md "$BASE"/examples/example-001/core/README.md
cd "$BASE"/examples/example-001 && ./example-script.sh
cd "$BASE"/examples/example-001 && ./example-script.sh usage
cd "$BASE"/examples/example-001 && ./example-script.sh help say-hello-world
cd "$BASE"/examples/example-001 && ./example-script.sh say-hello-world
cd "$BASE"/examples/example-001 && ./example-script.sh say-hello-world --type=caps
cd "$BASE"/examples/example-001 && ./example-script.sh say-hello-world --type=caps --simulation-mode=true
cd "$BASE"/examples/example-001 && ./example-script.sh self-test
rm -rf "$BASE"/examples/example-001/core
