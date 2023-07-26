package permit.custom

# import data.kubernetes.admission

# default allow := false

# You can find the official Rego tutorial at:
# https://www.openpolicyagent.org/docs/latest/policy-language/
# Example rule - you can replace this with something of your own
# allow {
# 	input.user.key == "test@permit.io"
# }
# Also, you can add more allow blocks here to get an OR effect
# allow {
#     # i.e if you add my_custom_rule here - the policy will allow
#     # if my_custom_rule is true, EVEN IF policies.allow is false.
#     my_custom_rule
# }

deny[msg] {
    some location_label_value
    input.request.kind.kind == "Ingress"
    input.request.operation == "CREATE"
    location_label_value := input.request.object.metadata.labels.location
    
   # host := input.request.object.spec.rules[_].host
   # ingress := ingresses[other_ns][other_ingress]
   # other_ns != input.request.namespace
   # ingress.spec.rules[_].host == host
    msg := sprintf("invalid ingress label (expected %v got %v)", [other_ns, location_lable_value])
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
