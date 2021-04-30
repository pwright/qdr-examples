# Mesh of three routers in a single namespace

Creates a mesh of three routers running on the same namespace `site-1`.

## Deploying sample

To deploy this sample, run:

```
oc -n site-1 apply -f ./
```

It will create a namespace named `site-1` and deploy
three router instances on it. The router instances will
be connected (insecurely).


## Removing sample

```
oc delete ns site-1
```
