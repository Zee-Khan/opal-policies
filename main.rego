package system

import data.permit.root

deny[msg] {
    #msg := "this is from main"
    msg := sprintf("input is %v", [input])
}

main := {
  "apiVersion": "admission.k8s.io/v1",
  "kind": "AdmissionReview",
  "response": response,
}

default uid := ""

uid := input.request.uid

response := {
    "allowed": false,
    "uid": uid,
    "status": {
        "message": reason,
    },
} {
    reason = concat(", ", deny)
    reason != ""
}

else := {"allowed": true, "uid": uid}
