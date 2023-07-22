SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=true

REPLACE="
"



print_modname() {
  ui_print "                       .%@%.                       "
  ui_print "               @@@@@@@@@@@@@@@@/@@@@               "
  ui_print "           @@@@@@@@@@@@@@@@@@@@@@  @@@@@           "
  ui_print "        *@@@@@@@@@@@@@@@@@@@@@@@@@&  @@@@@         "
  ui_print "      .@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@       "
  ui_print "     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @@@@@@@     "
  ui_print "    @@@@@@@     @@@@@@@@@@@@@@@@@@     @@@@@@@@    "
  ui_print "   @@@@@          @@@@@@@@@@@@@@       @@@@@@@@@   "
  ui_print "   @@@&   @@@@@@@@@@  @@@@@@,  @@@@@@@@@@@@@@@@@   "
  ui_print "   @@% @@@@@@@@@@@@@@@@     @@@@@@@@@@@@@@@@@@@@   "
  ui_print "   @@ @@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@   "
  ui_print "   @@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@   "
  ui_print "    @@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@    "
  ui_print "     @@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@     "
  ui_print "      @@@@@@@@@@@@@@@@%      @@@@@@@@@@@@@@(@      "
  ui_print "        @@@@@@@@@@@@@@@&        ,@@@@@@@ @@        "
  ui_print "          .@@@@@@@@@@@@@@@@@@@   (@@@@ @           "
  ui_print "              @@@@@@@@@@@@@@@@@@@@@@@              "
  ui_print "                    ,@@@@@@@@@.                    "
  ui_print "           INAZUMA ULTIMATE PERFORMANCE            "
  ui_print "                auth : Asmodeus79                  "
  ui_print "    Thermods, Memory Tweak, Perf Tweak, and etc    "
}


on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  unzip -o "$ZIPFILE" 'Memory' -d $MODPATH >&2
  unzip -o "$ZIPFILE" 'Naganohara' -d $MODPATH >&2
  unzip -o "$ZIPFILE" 'UNLOCKER' -d $MODPATH >&2
}


set_permissions() {
  # The following is the default rule, DO NOT remove
  set_perm_recursive $MODPATH 0 0 0777 0777


}

