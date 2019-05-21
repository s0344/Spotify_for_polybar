# Spotify for polybar

 - Make sure `awesome-terminal-fonts` and `playerctl` is installed
 - Go to [cheatsheet](https://fontawesome.com/cheatsheet) to get icon
 - Open `~/.config/polybar/config` and add `font-2 = FontAwesome:style=Regular:pixelsize=10;1`
 > font-# depends on how many fonts you have in your config
 - Put the scripts at `~/.config/polybar/`
 - Open `~/.config/polybar/config` and put this at the end
~~~ini
[module/spotify]
type = custom/script
interval = 1
format-prefix = " " ;music icon here
format = <label>
exec = python ~/.config/polybar/spotify_status.py -f '{artist}: {song}'
;format-underline = #1db954

[module/previous]
type = custom/script
interval = 86400
format = "%{T3}<label>"
format-padding = 1
tail = true
exec = ~/.config/polybar/prev.sh
;format-underline = #1db954
;line-size = 1
click-left = "playerctl previous"

[module/next]
type = custom/script
interval = 86400
format = "%{T3}<label>"
format-padding = 1
tail = true
exec = ~/.config/polybar/next.sh
;format-underline = #1db954
;line-size = 1
click-left = "playerctl next"

[module/playpause]
type = custom/script
interval = 86400
format = "%{T3}<label>"
exec = ~/.config/polybar/playpause.sh
tail = true
format-padding = 1
;format-underline = #1db954
;line-size = 1
click-left = "playerctl play-pause"
~~~
- To enable it, put `spotify previous playpause next` in either `modules-left`, `modules-center` or `modules-right` as you like.
- lastly, since the icons will be broken when the script is upload, you will have to manually go to the cheatsheet and find the icons and put it in the scripts and in the config


### Source
- https://github.com/Alexays/Waybar/issues/34
- https://github.com/Jvanrhijn/polybar-spotify 
