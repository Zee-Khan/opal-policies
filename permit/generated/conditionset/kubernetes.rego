package permit.generated.conditionset

import future.keywords.in

import data.permit.generated.abac.utils.attributes

default userset_kubernetes = false

userset_kubernetes {
	attributes.user.email == "zohaib.khan@swisscom.com"
}
