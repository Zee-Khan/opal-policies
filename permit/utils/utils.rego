package permit.utils

import future.keywords.in

#input.action = input.request.object.operation
#input.user.key = "zohaib.khan@swisscom.com"
#input.resource.key = input.request.kind.kind
#input.resource.type = input.request.kind.kind
#input.resource.tenant = "default"
#input.resource.attributes = {
#    "type": input.request.kind.kind,
#    "location": input.request.metadata.annotations.labels.location
#}

# not undefined if object 'x' has a key 'k'
has_key(x, k) {
	_ := x[k]
}

# If a field 'k' relies in both 'a' and 'b' objects, pick its value from 'a'.
pick_first(k, a, b) = a[k] {
	has_key(a, k)
}

else = b[k] {
	true
}

object_keys(obj) := result {
	result := [key | some key, value in obj]
}
