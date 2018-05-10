#!/bin/sh
lock() {
i3lock -i ~/.wallpapers/Firewatch\ Mod\ Night\ Final.png -t -e --insidevercolor=63f2f177 --insidewrongcolor=ff545877 --insidecolor=cbe3e733 --ringvercolor=63f2f1ff --ringwrongcolor=ff5458ff --ringcolor=1e1c3199 --textcolor=fbfcfcff --separatorcolor=1e1c3199 --keyhlcolor=63f2f1bb --bshlcolor=ffb378bb -r
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    reboot)
        systemctl reboot
        ;;
    suspend)
        lock && systemctl suspend
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
