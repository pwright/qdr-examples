# Single standalone router using vHost Policies

This scenario contains a single router deployment that uses a
config map that contains vHost policies. The policies are loaded
at the moment pod is created, so changes to the policy config map
needs a redeploy.

## Deploying sample scenario

```
oc -n docs-example apply -f ./
```

## Verifying available vhost policies

```
oc -n docs-example exec deploy/router -- qdmanage query --type vhost
```

## Removing sample scenario

```
oc delete ns docs-example
```
