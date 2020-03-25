TYPE=$(argvalue type)
SIMULATION=$(argvalue simulation-mode)

if [ "$SIMULATION" == 'true' ]; then
  if [ "$TYPE" == 'caps' ]; then
    echo 'simulating saying hello world in caps'
  else
    echo 'simulating saying hello world in lowercase'
  fi
else
  if [ "$TYPE" == 'caps' ]; then
    echo 'HELLO WORLD'
  else
    echo 'hello world'
  fi
fi
