echo '[info] About to get ShellCheck metrics'

$DOCKER kill dcbase-shell-lint-container > /dev/null 2> /dev/null || true
$DOCKER rm dcbase-shell-lint-container > /dev/null 2> /dev/null || true

cd "$GlobalSCRIPTDIR" && $DOCKER build -f Dockerfile-linter -t "dcbase-shell-lint-image" .
