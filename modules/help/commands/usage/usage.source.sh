echo -e ""
echo -e "Usage (call $GlobalSCRIPTNAME with no additional arguments to get help):"
echo -e "-----"
echo -e ""
echo -e "$GlobalSCRIPTNAME [command] [arguments] [parameters]"
echo -e ""
echo -e "Available global arguments:"
echo -e "-----"
echo -e ""
if [ -f "$GlobalSCRIPTDIR"/core/modules/*/arguments/*/README.md ]; then
  head -n 1 "$GlobalSCRIPTDIR"/core/modules/*/arguments/*/README.md | grep -v == | grep -v '^$'
fi
if [ -f "$GlobalSCRIPTDIR"/script/modules/*/arguments/*/README.md ]; then
  head -n 1 "$GlobalSCRIPTDIR"/script/modules/*/arguments/*/README.md | grep -v == | grep -v '^$'
fi
echo -e ""
echo -e "Available commands:"
echo -e "-----"
echo -e ""
if [ -f "$GlobalSCRIPTDIR"/core/modules/*/commands/*/README.md ]; then
  head -n 1 "$GlobalSCRIPTDIR"/core/modules/*/commands/*/README.md | grep -v == | grep -v '^$'
fi
if [ -f "$GlobalSCRIPTDIR"/script/modules/*/commands/*/README.md ]; then
  head -n 1 "$GlobalSCRIPTDIR"/script/modules/*/commands/*/README.md | grep -v == | grep -v '^$'
fi
echo -e ""
