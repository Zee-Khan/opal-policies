package system

import data.permit.root
#import data.permit.utils.abac
# import data.permit.abac
# import data.permit.custom
# import data.permit.generated.abac.utils
# import data.permit.generated.conditionset
#import data.test
# import data.permit.generated.conditionset
# import data.permit.generated.abac.utils

# deny[msg] {
#     #msg := "this is from main"
# 	disallowed := {i | conditionset[i] == false}
#     count(disallowed) > 0
#     msg := sprintf("Denied because of %v", [disallowed])
# }

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
    reason = concat(", ", root.deny)
    reason != ""
}

else := {"allowed": true, "uid": uid}
