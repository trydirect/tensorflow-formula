[![Build Status](https://travis-ci.com/trydirect/tensorflow-formula.svg?branch=master)](https://travis-ci.com/trydirect/tensorflow-formula)
![Docker Stars](https://img.shields.io/docker/stars/trydirect/tensorflow-formula.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/trydirect/tensorflow-formula.svg)
![Docker Automated](https://img.shields.io/docker/cloud/automated/trydirect/tensorflow-formula.svg)
![Docker Build](https://img.shields.io/docker/cloud/build/trydirect/tensorflow-formula.svg)
[![Gitter chat](https://badges.gitter.im/trydirect/community.png)](https://gitter.im/try-direct/community)

# Tensorflow-Formula

ML stack environment on docker-compose which includes: Tensorflow + Python 3.7 and other useful tools

## Stack includes

* Python 3.7
* TensorFlow
* Jupyter Notebook
* Portainer
* Nginx as sidecar

Extra python libs are included. 


## Note
Before installing this project, please, make sure you have installed docker and docker-compose

To install docker execute: 
```sh
$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sh get-docker.sh
$ pip install docker-compose
```
## Installation

Clone this project into your work directory:

```sh
$ git clone "https://github.com/trydirect/tensorflow-formula.git"
```

Then build it with the following command:
```sh
$ cd tensorflow-formula
$ ./setup.sh
```

Once the docker images are built/pulled, the stack will be deployed and a Jupyter token will be printed out.
```
$ ./setup.sh
Creating network "user_default" with the default driver
Creating volume "user_jupyter-notebooks" with local driver
Creating volume "user_portainer-data" with local driver
Creating user_jupyter-tensorflow_1 ... done
Creating user_portainer_1          ... done
Jupyter token: e7c7bb2956c899e7cce6fbd5587108ef701c98ca5ab0ac84
```

## Default ports:  

- Jypter Notebook: 8888   
- Portainer:  9000
- Applications are also accessible using the following endpoints:
  * Jupyter Notebook - ip_address/
  * Portainer - ip_address/portainer/

## Features

* Full Docker integration
* Docker Compose integration and optimization for local development

The final project structure will look like this: 

```
.
├── README.md
├── cleanup.sh
├── setup.sh
├── start.sh
├── stop.sh
└── v01
    └── dockerfiles
        ├── build
        │   └── app
        │       └── Dockerfile
        ├── configs
        │   └── nginx
        │       └── default.conf
        └── docker-compose.yml

6 directories, 8 files
```    

```
              Name                            Command               State           Ports         
--------------------------------------------------------------------------------------------------
dockerfiles_jupyter-tensorflow_1   jupyter notebook --port=88 ...   Up      0.0.0.0:8888->8888/tcp
dockerfiles_nginx_1                nginx -g daemon off;             Up      0.0.0.0:80->80/tcp    
dockerfiles_portainer_1            /portainer                       Up      0.0.0.0:9000->9000/tcp                
```


## Start, Stop and Clean-Up

For stopping a running stack without deleting its resources - use:
```sh
$ ./stop.sh
```

For starting an existing stack - use: 
```sh
$ ./start.sh
```

For removing all the containers and volumes - use: 
```sh
$ ./cleanup.sh
```

## Quick deployment to cloud
##### Amazon AWS, Digital Ocean, Hetzner and others
[<img src="https://img.shields.io/badge/quick%20deploy-%40try.direct-brightgreen.svg">]
TODO



## Contributing

1. Fork it (https://github.com/trydirect/tensorflow-formula/fork)
2. Create your feature branch (git checkout -b feature/fooBar)
3. Commit your changes (git commit -am 'Add some fooBar')
4. Push to the branch (git push origin feature/fooBar)
5. Create a new Pull Request



## Support Development

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=2BH8ED2AUU2RL)