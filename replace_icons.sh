function replace_icons() {
  local app_name=$1
  local icon_name=${2:-"app"} # default icon_name = "app"
  cp "$app_name"/$icon_name.icns /Applications/"$app_name".app/Contents/Resources/$icon_name.icns
  touch /Applications/"$app_name".app
  pkill -x "$app_name" && open /Applications/"$app_name".app
  echo "Replaced $app_name icon"
}

replace_icons "Google Chrome"
replace_icons "Atom" "atom"
replace_icons "Visual Studio Code" "Code"

sudo killall Finder && sudo killall Finder