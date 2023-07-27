package system

import data.permit.root
#import data.test

#import data.permit.custom
#import data.permit.debug
#import data.permit.policies

#default allow := false
#default allow := true

#allow {
#	policies.allow
#        msg := sprintf("policies.allow is true")
#}

# NOTE: you can add more conditions here to get an AND effect
# i.e: assume you added my_custom_rule here
# The policy will allow if BOTH policies.allow and my_custom_rule are true

#allow {
#	custom.allow
#        msg := sprintf("custom.allow is true debug")
#}

deny[msg] {
    msg := "this is a test from main.rego"
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

