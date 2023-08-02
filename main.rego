package system

import data.permit.root
#import data.permit.utils.abac
import data.permit.abac
# import data.permit.custom
import data.permit.generated.abac.utils
# import data.permit.generated.conditionset
#import data.test
# import data.permit.generated.conditionset
# import data.permit.generated.abac.utils

deny[msg] {
    #msg := "this is from main"
    root.allow == false
    msg := sprintf("utils is %v", [utils])
    #msg := sprintf("userset__5f_5fautogen_5fadmin is %v, resourceset__5f_5fautogen_5fNamespace is %v, resourceset_namespace_5flocation_5fis_5fswitzerland is %v", [conditionset.userset__5f_5fautogen_5fadmin, conditionset.resourceset__5f_5fautogen_5fNamespace, conditionset.resourceset_namespace_5flocation_5fis_5fswitzerland])
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
