package authz

allow {
	x := data.policies[_]
	x.name == "test_policy"
	matches_role(input.role)
}

matches_role(my_role) {
	data.roles[my_role][_] == input.user
}
