echo '[info] About to get PhpCPD metrics'

LocalTEMP=$(tmp)
LocalID=$(uuid)
LocalDOCKERFILE=Dockerfile-"$LocalID"
LocalDOCKERIMAGE=$(uuid)
LocalDOCKERCONTAINER=$(uuid)

cd "$GlobalSCRIPTDIR" && cp -r "$GlobalMETRICSSOURCE"/* "$LocalTEMP"
cp -r "$GlobalSCRIPTDIR"/script/modules/phpcpd/Dockerfile "$LocalTEMP"/"$LocalDOCKERFILE"

ls -lah "$GlobalMETRICSSOURCE"
ls -lah "$LocalTEMP"

cd "$LocalTEMP" && docker build -f "$LocalDOCKERFILE" -t "$LocalDOCKERIMAGE" .
cd "$LocalTEMP" && docker run --name "$LocalDOCKERCONTAINER" "$LocalDOCKERIMAGE"
cd "$GlobalSCRIPTDIR" && docker cp "$LocalDOCKERCONTAINER":/metrics "$GlobalMETRICSDESTINATION"
