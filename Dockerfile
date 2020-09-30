FROM alpine:latest

RUN apk add --no-cache curl

CMD ntpd -p pool.ntp.org && echo "$CRON_ENTRY" | crontab - && crond -f
