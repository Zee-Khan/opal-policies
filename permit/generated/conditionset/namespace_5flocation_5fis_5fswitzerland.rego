package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_namespace_5flocation_5fis_5fswitzerland = false

resourceset_namespace_5flocation_5fis_5fswitzerland {
	attributes.resource.location == "Switzerland"
	attributes.resource.type == "Namespace"
}
