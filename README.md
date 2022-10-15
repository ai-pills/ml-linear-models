---
title: Linear Models in Machine Learning
author: Michele Lombardi <michele.lombardi2@unibo.it>
---

# Linear Models in Machine Learning

This is a multipart tutorial on the use of Linear Models for simple supervised learning tasks. The tutorials are presented via Jupyter notebooks (and published on github), so that they can be accessed in three different ways:

* As static pages on github
* As interactive notebooks running on a remote machine (via
[Binder](https://mybinder.org/))
* As interactive notebooks running on your local machine (via
[Docker](https://www.docker.com/))

## Viewing the Tutorials on Github

The simplest approach for accessing a tutorial is simply to use
[github](https://github.com/), which allows one to visualize markdown files
(such as this `README.md`) and Jupyter notebooks as nicely formatted web
pages. Try inspecting the code of any of `.ipynb` files in this folder: the
file starting with "1." is obviously a good choice ;-)

This is enough to view the text and code content of a tutorial, but it does
not enable executing the code and checking the results.

## Remote Execution via Binder

The tutorials can also be run in a remote environment via
[Binder](https://mybinder.org/), a system that enables running repositories
containing Jupyter notebooks on a remote machine. To access the tutorials in
this fashion, simple click the following button:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/lompabo/linear-models-in-ml/HEAD)


When you click the link, the Binder system will spawn a Docker container
running a Jupyter server, configure an environment for the tutorial, and allow
you to run it as if on a local machine. This means you can execute code, as
well as displaying the tutorial content. It's an extremely convenient way to
make tutorials accessible, with no setup required on the user part. Just keep
in mind that it will take a little time.

## Local Execution

More advanced use cases may benefit from running everything on a local
machine. In an effort to improve portability and to avoid messing up with the
local environment we will rely on [Docker]((https://www.docker.com/)) for
local execution.

Doing this will require to:

* Install Docker, by following the [online instructions](https://docs.docker.com/get-docker/).
* Install Docker Compose, by following the [online
instructions](https://docs.docker.com/compose/install/)
* Clone the repository with the tutorial, in this case via the command:
```sh
git clone https://github.com/lompabo/tutorial-template-python.git
```
* Start the container via Docker Compose, from the main directory of the
tutorial:
```sh
docker-compose up
```

On linux systems, you may need to start the docker service first.

The first execution of this process will be fairly long, since Docker will
need to download a base image for the container (think of a virtual machine
disk) and then some boilerplate configuration steps will need to be performed
(e.g. installing jupyter in the container). Subsequent runs will be much
faster.

The process will end with a message such as this one:
```sh
To access the notebook, open this file in a browser:
    file:///home/lompa/.local/share/jupyter/runtime/nbserver-1-open.html
Or copy and paste this URL:
    http://127.0.0.1:39281/?token=0cd92163797c3b3abe67c2b0aea57939867477d6068708a2
```
Copying one of the two addresses in a file browser file provide access to the Jupyter server running in the spawned container.

Once you are done, pressing CTRL+C on the terminal will close the Docker container.

For more information about how Docker works (such as the difference between
images and containers, or how to get rid of all of them once you are done with
the tutorial), you can check the [Docker
documentation](https://docs.docker.com/).

