ARG="$1"
NAME=$(sed 's/=.*$//g' <<< "$ARG")
NAME=$(sed 's/--//g' <<< "$NAME")
VALUE=$(sed 's/^--.*=//g' <<< "$ARG")
if [ -v "$VALUE" ]; then
  VALUE=1
fi
