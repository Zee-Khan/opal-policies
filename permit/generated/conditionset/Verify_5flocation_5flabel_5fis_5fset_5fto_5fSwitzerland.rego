package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default resourceset_Verify_5flocation_5flabel_5fis_5fset_5fto_5fSwitzerland = false

resourceset_Verify_5flocation_5flabel_5fis_5fset_5fto_5fSwitzerland {
	attributes.resource.location == "Switzerland"
	attributes.resource.type == "Kubernetes_location_label"
}
