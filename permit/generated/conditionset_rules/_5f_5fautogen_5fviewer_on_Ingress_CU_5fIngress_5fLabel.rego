package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default _5f5f_5f5fautogen_5f5fviewer_5fon_5fIngress_5fCU_5f5fIngress_5f5fLabel = false

_5f5f_5f5fautogen_5f5fviewer_5fon_5fIngress_5fCU_5f5fIngress_5f5fLabel {
	conditionset.userset__5f_5fautogen_5fviewer
	conditionset.resourceset_CU_5fIngress_5fLabel
	input.action in condition_set_permissions.__autogen_viewer.CU_Ingress_Label[input.resource.type]
}
