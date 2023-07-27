package system

#import data.permit.root

test[msg] {
    msg =: "This is a test"
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
    reason = concat(", ", test)
    reason != ""
}

else := {"allowed": true, "uid": uid}

