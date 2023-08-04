package permit.generated.conditionset.rules

import future.keywords.in

import data.permit.generated.abac.utils.attributes
import data.permit.generated.abac.utils.condition_set_permissions
import data.permit.generated.conditionset

default kubernetes_5fon_5fNamespace_5flocation_5f5fin_5f5fswitzerland = false

kubernetes_5fon_5fNamespace_5flocation_5f5fin_5f5fswitzerland {
	conditionset.userset_kubernetes
	conditionset.resourceset_location_5fin_5fswitzerland
	input.action in condition_set_permissions.kubernetes.location_in_switzerland[input.resource.type]
}
