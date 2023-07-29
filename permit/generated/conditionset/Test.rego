package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_Test = false

resourceset_Test {
	attributes.resource.location == "Germany"
	attributes.resource.type == "ingress"
}
