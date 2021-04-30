# Router and Broker scenario

This sample scenario deploys a single router and instances.
The broker has a single queue named `trx.queue`.

The router has all the configuration to use `trx.queue` as 
a broker queue and the transaction coordinator is also enabled
for this particular broker. This way users can run transactions
against the defined broker addresses.


## Deploying this sample

```
oc -n docs-example apply -f ./
```

# Testing the setup

```
oc -n docs-example run jms-test --image quay.io/atomictests/jms-amqp-tests:1.1 --env QPID_JMS_TRANSACTION_ROUTER_URL="amqp://router:5672"
```

... and then observe logs for the given pod:

```
oc -n docs-example logs -f pod/jms-test
```

## Removing this sample

```
oc delete ns docs-example
```

## Broker setup

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!! SHOULD WE DOCUMENT OR SIMPLY POINT HOW TO SET UP A BROKER DEPLOYMENT ??????
!!
!! THE PROCEDURE FOR DEPLOYING THE BROKER IS FULLY UPSTREAM AND CERTAINLY
!! NOT THE RECOMMENDED APPROACH.
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
