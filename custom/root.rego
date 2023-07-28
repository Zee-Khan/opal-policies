package permit.custom

# import data.kubernetes.admission

#default allow := true
default allow := false

# You can find the official Rego tutorial at:
# https://www.openpolicyagent.org/docs/latest/policy-language/
# Example rule - you can replace this with something of your own
# allow {
#       input.user.key == "test@permit.io"
# }
# Also, you can add more allow blocks here to get an OR effect
# allow {
#     # i.e if you add my_custom_rule here - the policy will allow
#     # if my_custom_rule is true, EVEN IF policies.allow is false.
#     my_custom_rule
# }

custom_resource_attributes = {
    "type": "ingress",
    "location": "Switzerland"
}

custom_user_attributes = {
    "key": "admin",
    "roles": "admin"
}

