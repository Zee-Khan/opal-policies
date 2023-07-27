package permit.root

import data.permit.custom
import data.permit.debug
import data.permit.policies

default allow := false
#default allow := true

default deny[msg] := "this is the default"

allow[msg] {
	policies.allow
        msg := sprintf("policies.allow is true", [debug])
}

# NOTE: you can add more conditions here to get an AND effect
# i.e: assume you added my_custom_rule here
# The policy will allow if BOTH policies.allow and my_custom_rule are true

allow[msg] {
	custom.allow
        msg := sprintf("custom.allow is true debug", [debug])
}

deny[msg] {
    msg := "this is a test from root.rego"    
}

allowing_sources := policies.__allow_sources

default __data_use_debugger := true

__data_use_debugger = data.use_debugger

default __input_use_debugger := null

__input_use_debugger = input.use_debugger

default debugger_activated := false

debugger_activated {
	__data_use_debugger == true
	__input_use_debugger != false
} else {
	__input_use_debugger == true
}

debug = result {
	debugger_activated
	result := debug.debug
}
