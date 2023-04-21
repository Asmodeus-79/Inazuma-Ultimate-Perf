SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=true

REPLACE="
"



print_modname() {
  ui_print "********************************"
  ui_print "      Optimizer + Thermods      "
  ui_print "         by=Asmodeus79          "  
  ui_print "********************************"
}


on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  unzip -o "$ZIPFILE" 'Atlantis' -d $MODPATH >&2
  unzip -o "$ZIPFILE" 'Memory.sh' -d $MODPATH >&2
  unzip -o "$ZIPFILE" 'Piero.sh' -d $MODPATH >&2
}


set_permissions() {
  # The following is the default rule, DO NOT remove
  set_perm_recursive $MODPATH 0 0 0777 0777


}

