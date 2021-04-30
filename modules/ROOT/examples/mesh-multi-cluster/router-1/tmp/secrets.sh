kubectl -n banana create secret generic sample-ca --from-file=ca.pem=ca.pem --from-file=ca.key=ca.key
kubectl -n banana create secret generic router-1 --from-file=ca.pem=ca.pem --from-file=cert.key=router-1.key --from-file=cert.pem=router-1.pem
kubectl -n banana create secret generic router-2 --from-file=ca.pem=ca.pem --from-file=cert.key=router-2.key --from-file=cert.pem=router-2.pem
kubectl -n banana create secret generic router-3 --from-file=ca.pem=ca.pem --from-file=cert.key=router-3.key --from-file=cert.pem=router-3.pem
