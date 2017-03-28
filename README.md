# 2Slack #

Send messages to Slack from the command line

## Installation ##
Default installation will place 2slack in /opt/bin directory and you'll need
root privileges:
```shell
sudo ./install.sh
```

Default config file will be placed to /opt/2slack/2slack.conf but you can
override default values with a user config file:
```shell
cp 2slack.conf.sample ~/.2slack.conf
vim ~/.2slack.conf
```

## Usage ##
```shell
Usage: 2slack <options>
Where options are:
  -w webhook    Slack webhook url
  -c channel    Specify a Slack #channel or specific @username
  -u username   Override default username
  -i icon       Override default bot icon image
  -t text       Text message to send
  -h            Show this help information
Defaults will be read from configuration files
Examples:
  2slack -u "John Doe" -i ":smile:" -c "#myteam" -t "hi team"
  uptime | 2slack
```
