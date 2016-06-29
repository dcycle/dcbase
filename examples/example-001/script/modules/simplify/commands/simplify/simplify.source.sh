GlobalSIMPLIFYSOURCE=$(argvalue source)
GlobalSIMPLIFYDESTINATION=$(argvalue destination)

if [ "$GlobalSIMPLIFYSOURCE" == 1 ] || [ "$GlobalSIMPLIFYSOURCE" == 0 ]; then
  echo 'Please provide a source git repo with --source=/path/to/repo'
  exit 1
fi
if [ "$GlobalSIMPLIFYDESTINATION" == 1 ] || [ "$GlobalSIMPLIFYDESTINATION" == 0 ]; then
  echo 'Please provide a destination path where simplified metrics should be stored, --destination=/path/to/simplified/metrics'
  exit 1
fi
if [ ! -d "$GlobalSIMPLIFYSOURCE" ]; then
  echo "The source directory provided, $GlobalSIMPLIFYSOURCE, does not seem to exist"
  exit 1
fi
mkdir -p "$GlobalSIMPLIFYDESTINATION" 2>/dev/null >/dev/null || true
if [ ! -d "$GlobalSIMPLIFYDESTINATION" ]; then
  echo "The source directory provided, $GlobalSIMPLIFYDESTINATION, does not seem to exist, and we could not create it, possibly due to permissions issues."
  exit 1
fi

echo -e "[info] About to get raw metrics for the repo at $GlobalSIMPLIFYSOURCE"
echo -e "[info] Simplified metrics will be placed in $GlobalSIMPLIFYDESTINATION"

echo '[info] About to get PhpMD metrics'

LocalTEMP=$(tmp)
LocalID=$(uuid)
LocalDOCKERFILE=Dockerfile-"$LocalID"
LocalDOCKERIMAGE=$(uuid)
LocalDOCKERCONTAINER=$(uuid)

cd "$GlobalSCRIPTDIR" && cp -r "$GlobalSIMPLIFYSOURCE"/* "$LocalTEMP"
cp -r "$GlobalSCRIPTDIR"/script/modules/simplify/Dockerfile "$LocalTEMP"/"$LocalDOCKERFILE"
cp -r "$GlobalSCRIPTDIR"/script/modules/simplify/docker-resources "$LocalTEMP"/docker-resources

cd "$LocalTEMP" && docker build -f "$LocalDOCKERFILE" -t "$LocalDOCKERIMAGE" .
cd "$LocalTEMP" && docker run --name "$LocalDOCKERCONTAINER" "$LocalDOCKERIMAGE"
cd "$GlobalSCRIPTDIR" && docker cp "$LocalDOCKERCONTAINER":/simplified/ "$GlobalSIMPLIFYDESTINATION"
#
#
# echo 'metrics.source.sh nyi'
# exit 1;
