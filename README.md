Kernel pattern library
======================

This project is a prototype pattern libray, CSS architecture and framework for FutureLearn design system.

It gives you a tested, robust approach, and a starting point with a handful of tools to build modular user interfaces with HTML and CSS.


How to get started
------------------

You will need Ruby and Bundler installed on your machine.

1.  Clone this repo
2.  Run `bundle install` from the project folder
3.  Start Middleman with `bundle exec middleman`
4.  You should be able to access the server on `http://localhost:4567`

More info about Middleman and how to install: https://middlemanapp.com/

#### Docker

1. Clone this repo
2. run ```docker build -t pattern-lib .``` to build the docker container
3. run ```docker run -d -p 4567:4567 -v `pwd`:/usr/local/pattern-lib/ --name pattern-lib pattern-lib``` to run the docker container
4. You should be able to access the server on `http://localhost:4567`

Use `docker stop pattern-lib` to stop and `docker start pattern-lib` to start the container.
