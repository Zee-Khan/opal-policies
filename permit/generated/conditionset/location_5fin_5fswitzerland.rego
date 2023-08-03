package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_location_5fin_5fswitzerland = false

resourceset_location_5fin_5fswitzerland {
	attributes.resource.location == "Switzerlan"
	attributes.resource.type == "Namespace"
}
