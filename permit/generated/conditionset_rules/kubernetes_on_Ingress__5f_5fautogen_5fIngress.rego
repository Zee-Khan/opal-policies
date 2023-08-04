package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default kubernetes_5fon_5fIngress_5f_5f5f_5f5fautogen_5f5fIngress = false

kubernetes_5fon_5fIngress_5f_5f5f_5f5fautogen_5f5fIngress {
	conditionset.userset_kubernetes
	conditionset.resourceset__5f_5fautogen_5fIngress
	input.action in condition_set_permissions.kubernetes.__autogen_Ingress[input.resource.type]
}
