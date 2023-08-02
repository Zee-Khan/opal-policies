package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset_adminuserset = false

userset_adminuserset {
	attributes.user.roles == "admin"
}
