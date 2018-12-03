# python-slackbot-devkit
Python slackbot development kit

## Getting Started

### Prerequisites
* Docker

or

* Vagrant

### Installing
* Docker
```
docker pull chakimar/python-slackbot-devkit
```


or

* Vagrant
```
vagrant up
```

## Development

### Configure the bot
* Docker

Nothing to do.

or

* Vagrant

Insert your api token to slackbot_settings.py
```python:slackbot_settings.py
API_TOKEN = "<your-api-token>"
```

### Run
* Docker
```
docker run -e API_TOKEN=xxx-xxx-xxx -it chakimar/python-slackbot-devkit
```

or

* Vagrant
```
vagrant ssh -- "python3 /vagrant/run.py"
```

## Acknowledements
* [Python slackbot library](https://github.com/lins05/slackbot)