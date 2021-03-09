# Creates a mesh of three routers using distinct namespaces

Creates a mesh of three routers, each one running on a separate
namespace.

Routers will connect to each other using TLS authentication.

## Deploying sample

To create them, run:

```
oc -n site-1 apply -f ./router-1
oc -n site-2 apply -f ./router-2
oc -n site-3 apply -f ./router-3
```

The commands above will create three namespaces in your current cluster:
* site-1
* site-2
* site-3

Each namespace will have a router deployment that connects to other routers
forming a triangle topology, like:

                       router-1
                      o        \
                     /          \
                    /            o
             router-3 o--------- router-2


  TODO: Explain how to create routes and eventually change the connectors to use
        the routes instead.


## Removing sample

```
oc delete ns site-1 site-2 site-3
```
