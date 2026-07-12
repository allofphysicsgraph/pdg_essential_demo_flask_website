Prior to exploring this repo you should have reviewed <https://github.com/allofphysicsgraph/pdg_essential_demo_docker>. The `pdg_essential_demo_docker` has advice for setting up `git`, so this repo (`pdg_essential_demo_flask_website`) assumes you already have `git` and `docker` working.

# Demo of Flask in Docker

See <https://flask.palletsprojects.com/en/stable/>

To use,
```bash
make container
make up
```

In a browser, visit <http://localhost:5000> to see a static HTML page


# Guide

This demo repo is part of a sequence of tutorials

![sequence of demos](https://raw.githubusercontent.com/allofphysicsgraph/pdg_essential_demo_docker/refs/heads/main/tutorials_dependency_graph.svg)


# More details

```
cd allofphysicsgraph
git clone git@github.com:allofphysicsgraph/pdg_essential_demo_flask_website.git
cd pdg_essential_demo_flask_website
make container
make up

```
