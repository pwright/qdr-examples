# Mesh of three routers in a single namespace

Creates a mesh of three routers running on the same namespace `docs-example`.

## Deploying sample

To deploy this sample, run:

```
oc -n docs-example apply -f ./
```

It will create a namespace named `docs-example` and deploy
three router instances on it. The router instances will
be connected (insecurely).


## Removing sample

```
oc delete ns docs-example
```
