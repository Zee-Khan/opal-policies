package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_Location_5fis_5fSwitzerland = false

resourceset_Location_5fis_5fSwitzerland {
	attributes.resource.location == "Switzerland"
	attributes.resource.type == "ingress"
}
