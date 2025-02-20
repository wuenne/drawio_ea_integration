# Replaces the plugin in the locally running draw io application
# Requires to 

# copy the script-file into the user specific plugin folder
Copy-Item ".\draw_io_ea_plugin_jri.js" "C:\Users\$env:USERNAME\AppData\Roaming\draw.io\plugins" -Force

# Beende draw.io
Stop-Process -Name "draw.io" -Force 2> $null #be quiet if drawio is not runnint

# Starte draw.io erneut
# make sure, plugins are enabled
Start-Process "C:\APPS\draw.io\draw.io.exe"  -ArgumentList "./empty.drawio", "--enable-plugins"