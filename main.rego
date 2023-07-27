package system

#import data.permit.root

default uid := ""

uid := input.request.uid

main := {
  "apiVersion": "admission.k8s.io/v1",
  "kind": "AdmissionReview",
  "response": {
      "allowed": true, 
      "uid": uid}
}

