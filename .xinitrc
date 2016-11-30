export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

exec i3
# exec startxfce4
xinput set-prop "ETPS/2 Elantech Touchpad" "Synaptics Tap Action" 2, 3, 0, 0, 1, 3, 2
