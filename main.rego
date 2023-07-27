package system

import data.permit.root

#deny[msg] {
#    msg := sprintf("root is %v", [root])
#}

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
    reason = concat(", ", root)
    reason != ""
}

else := {"allowed": true, "uid": uid}

