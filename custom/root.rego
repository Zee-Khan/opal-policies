package permit.custom

import future.keywords.in
import data.permit.generated.conditionset
# import data.kubernetes.admission

#default allow := true
default allow := false
default deny := null
# default deny := ["Deny All"]

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

custom_resource_attributes := {
    "type": input.request.kind.kind,
    "location": input.request.object.metadata.labels.location
}

# custom_user_attributes := {
#     "roles": ["admin"],
#     "tenant": ["default"]
# }

deny[msg] {
    # some key, val in conditionset
    # startswith(_set, "resourceset_")
    # not startswith(_set, "resourceset__5f_5fautogen")
    # val == false
    # msg := sprintf("Denied because of %v", [key])
    #msg := "this is from main"
	#disallowed := {i | conditionset[i] == false}
    #count(disallowed) > 0
    # msg := sprintf("Denied because of %v", [conditionset])
    msg := "deny all"
}

# deny[msg] {
#     some key, val in conditionset
#     startswith(_set, "resourceset_")
#     not startswith(_set, "resourceset__5f_5fautogen")
#     val != true
#     msg := "Deny all default. Policy doesn't exist for resource"
#     #msg := "this is from main"
# 	#disallowed := {i | conditionset[i] == false}
#     #count(disallowed) > 0
#     #msg := sprintf("Denied because of %v", [disallowed])
# }



# decode_condition_set_key(key) = value {
# 	value := data.condition_sets[key].key
# } else = key {
# 	true
# }

# resourcesets[set] {
# 	some _set, _ in conditionset
# 	startswith(_set, "resourceset_")
# 	not startswith(_set, "resourceset__5f_5fautogen")
# 	set := decode_condition_set_key(_set)
# }