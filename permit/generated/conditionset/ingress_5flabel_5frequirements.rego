package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_ingress_5flabel_5frequirements = false

resourceset_ingress_5flabel_5frequirements {
	attributes.resource.location == "Switzerland"
	attributes.resource.type == "Ingress"
}
