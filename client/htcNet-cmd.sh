#!/bin/sh

[ -f /etc/htcNet ] && . /etc/htcNet

LOGFILE=/var/log/htcNet-cmd.log
CMD="$1"
HOST="172.27.5.101"

log() {
    NOW=$(date +"%F %H:%M:%S")
    LOG="[$NOW] $1"
    echo $1
    echo -e "$1\n" >> "$LOGFILE"
}

if [ ! -z "$APPEND_LOG" ]; then
    echo > "$LOGFILE"
fi

if [ -z "$CMD" ]; then
    log "FATAL: Empty command!"
    exit -1
fi

log "RUNNING COMMAND $CMD"

SCRIPT_URL="http://$HOST/htcNet/host/$CMD.sh"

log "Download: $SCRIPT_URL"

SCRIPT=$(curl -fsSL $SCRIPT_URL)

log "Downloaded. RUN"

sh < "$SCRIPT" 2&>1 >> "$LOGFILE"

log "DONE"
