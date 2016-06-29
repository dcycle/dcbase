ERROR=0
BASE=$(pwd)

DOCKER='echo docker'
GlobalSCRIPTDIR="$BASE"

NEEDLE="$BASE"/Dockerfile-linter
MESSAGE="Dockerfile-linter exists."
source ./core/modules/testing/scripts/assert-file.source.sh

HAYSTACK=$(source "$BASE"/core/modules/development/scripts/lint.source.sh)
NEEDLE="docker build -f Dockerfile-linter"
MESSAGE="Linter builds a docker container"
source ./core/modules/testing/scripts/assert.source.sh

source ./core/modules/testing/scripts/cleanup.source.sh
