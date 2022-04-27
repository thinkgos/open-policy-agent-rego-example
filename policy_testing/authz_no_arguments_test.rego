package authz_no_arguments

test_replace_rule {
	allow1 with allow2 as true
}

test_allow2_must_fail {
	not allow2
}

test_allow3_must_true {
	allow3
}

test_allow3_must_undefined {
	not allow4
}
