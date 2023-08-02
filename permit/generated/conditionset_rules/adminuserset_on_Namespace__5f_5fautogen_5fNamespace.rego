package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default adminuserset_5fon_5fNamespace_5f_5f5f_5f5fautogen_5f5fNamespace = false

adminuserset_5fon_5fNamespace_5f_5f5f_5f5fautogen_5f5fNamespace {
	conditionset.userset_adminuserset
	conditionset.resourceset__5f_5fautogen_5fNamespace
	input.action in condition_set_permissions.adminuserset.__autogen_Namespace[input.resource.type]
}
