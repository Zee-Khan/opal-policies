package system

#import data.permit.root
import data.test

#deny[msg] {
#    #msg := "this is from main"
#    msg := sprintf("data is %v", [data])
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
    reason = concat(", ", test.deny)
    reason != ""
}

else := {"allowed": true, "uid": uid}
