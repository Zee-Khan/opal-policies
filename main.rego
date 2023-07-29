package system

import data.permit.root
import data.permit.custom
import data.permit.generated.abac.utils
#import data.test

deny[msg] {
    #msg := "this is from main"
    msg := sprintf("attributes is %v", [utils])
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
