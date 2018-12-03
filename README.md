# python-slackbot-devkit
Python slackbot development kit

## Getting Started

### Prerequisites
* Vagrant

* Docker

### Installing
```
vagrant plugin install vagrant-docker-compose
vagrant up
```

## Development

### Get API Token

Get API Token from slack bot page.


### Configure the bot

Set your API Token to environment value at runtime.(See below `Run` section)

### Build
```
vagrant ssh -- sudo docker build /vagrant/Dockerfile -t mybot
```


### Run
```
vagrant ssh -- docker run -e API_TOKEN=xxx-xxx-xxx -it mybot
```

##  Debug
Insert your api token to slackbot_settings.py
```python:slackbot_settings.py
API_TOKEN = "<your-api-token>"
```

and run below

```
vagrant ssh -- python3 /vagrant/run.py
```

## Acknowledements
* [Python slackbot library](https://github.com/lins05/slackbot)