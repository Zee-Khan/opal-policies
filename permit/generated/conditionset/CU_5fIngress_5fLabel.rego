package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_CU_5fIngress_5fLabel = false

resourceset_CU_5fIngress_5fLabel {
	attributes.resource.test_label_attr == "location"
	attributes.resource.type == "Ingress"
}
