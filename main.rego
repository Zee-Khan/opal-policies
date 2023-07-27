package system

#import data.permit.root

main := {
  "apiVersion": "admission.k8s.io/v1",
  "kind": "AdmissionReview",
  "response": {
      "allowed": true, 
      "uid": "UID"}
}

