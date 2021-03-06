# Personalized Docker Development Environment
[![Build Status](https://travis-ci.org/dan9186/docker-dan9186.svg?branch=master)](https://travis-ci.org/dan9186/docker-dan9186)
[![License](http://img.shields.io/:license-mit-green.svg)](http://dan9186.mit-license.org)
[![Docker Pulls](https://img.shields.io/docker/pulls/dan9186/dan9186.svg)](https://hub.docker.com/r/dan9186/dan9186/)
[![ImageLayers Size](https://img.shields.io/imagelayers/image-size/_/ubuntu/latest.svg)](https://hub.docker.com/r/dan9186/dan9186/)
[![ImageLayers Layers](https://img.shields.io/imagelayers/layers/_/dan9186/dan9186.svg)](https://hub.docker.com/r/dan9186/dan9186/)
[![Releases](https://img.shields.io/github/release/dan9186/docker-dan9186.svg)](https://github.com/dan9186/docker-dan9186/releases/latest)

A personalized development environment to include everything needed for Dan9186's daily development cycle.

# Usage
Isolated environment for testing

```
docker run -it --rm dan9186/dan9186
```
Work in the current host system directory

```
docker run -i -t -v $PWD:/docker dan9186/dan9186
```

Use common configs and keys

```
docker run -it \
-v $HOME/.gitconfig:/home/dan9186/.gitconfig \
-v $HOME/.ssh:/home/dan9186/.ssh \
-v $PWD:/docker dan9186/dan9186
```

# Purpose

* forceably find and document elements missing from the environment
* encourages proper saving of important work
* garbage is cleaned up through destruction of container
