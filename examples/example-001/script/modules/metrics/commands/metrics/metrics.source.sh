GlobalMETRICSSOURCE=$(argvalue source)
GlobalMETRICSDESTINATION=$(argvalue destination)

if [ "$GlobalMETRICSSOURCE" == 1 ] || [ "$GlobalMETRICSSOURCE" == 0 ]; then
  echo 'Please provide a source git repo with --source=/path/to/repo'
  exit 1
fi
if [ "$GlobalMETRICSDESTINATION" == 1 ] || [ "$GlobalMETRICSDESTINATION" == 0 ]; then
  echo 'Please provide a destination path where metrics should be stored, --destination=/path/to/metrics'
  exit 1
fi
if [ ! -d "$GlobalMETRICSSOURCE" ]; then
  echo "The source directory provided, $GlobalMETRICSSOURCE, does not seem to exist"
  exit 1
fi
mkdir -p "$GlobalMETRICSDESTINATION" 2>/dev/null >/dev/null || true
if [ ! -d "$GlobalMETRICSDESTINATION" ]; then
  echo "The source directory provided, $GlobalMETRICSDESTINATION, does not seem to exist, and we could not create it, possibly due to permissions issues."
  exit 1
fi

echo -e "[info] About to get metrics for the repo at $GlobalMETRICSSOURCE"
echo -e "[info] Metrics will be placed in $GlobalMETRICSDESTINATION"

invoke-all run-metrics

echo 'metrics.source.sh nyi'
exit 1;
