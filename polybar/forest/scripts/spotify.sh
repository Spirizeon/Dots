[colors]
color0=#1B242D
color1=#879EA2
color2=#8EAFB5
color3=#A9C1BE
color4=#9EBDC2
color5=#9EC1C7
color6=#B1CACD
color7=#C4D7D8
color9=#879EA2
color10=#8EAFB5
color11=#A9C1BE
color12=#9EBDC2
color13=#9EC1C7
color14=#B1CACD
color15=#C4D7D8
color8=#666666

[fonts]
#noto = MesloLGS-Regular:size=11
scp = SourceCodePro-Regular:size=11

### Main bar ###

[bar/base]
bottom = true
height = 30
width = 100%
underline-size = 3
background = #ff
foreground = ${colors.color6}
font-0 = ${fonts.scp}

[bar/main]
inherit = bar/base
monitor = DVI-D-0
modules-left = i3
modules-center = spotify
modules-right = volume date

[bar/left]
inherit = bar/base
bottom = true
monitor = DVI-I-1
modules-left = i3

[bar/right]
inherit = bar/left
monitor = HDMI-0

[module/i3]
type = internal/i3
pin-workspaces = true
strip-wsnumbers = true

[module/date]
type = internal/date
interval = 1.0
date =  %a %d %b %l:%M %p
format-padding = 1

[module/space]
type = custom/script
exec = echo " "
format-padding = 5

[module/volume]
type = internal/volume
format-volume = <ramp-volume> <label-volume>
label-volume = %percentage%
label-muted =  muted 
ramp-volume-0 = 
ramp-volume-1 = 
ramp-volume-2 = 
bar-volume-width = 10
bar-volume-indicator = ╍
bar-volume-fill = ╍
bar-volume-empty = ╍
format-volume-padding = 1
format-muted-padding = 1

[module/spotify]
type = custom/script
exec = ~/scripts/spotify %artist% - %title%
tail = true
interval = 2

