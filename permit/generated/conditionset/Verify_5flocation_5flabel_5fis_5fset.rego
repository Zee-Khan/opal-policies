package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_Verify_5flocation_5flabel_5fis_5fset = false

resourceset_Verify_5flocation_5flabel_5fis_5fset {
	attributes.resource.location == "Switzerland"
	attributes.resource.type == "Ingress"
}
