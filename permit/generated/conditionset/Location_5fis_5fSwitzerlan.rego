package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_Location_5fis_5fSwitzerlan = false

resourceset_Location_5fis_5fSwitzerlan {
	attributes.resource.location == "Switzerland"
	attributes.resource.type == "ingress"
}
