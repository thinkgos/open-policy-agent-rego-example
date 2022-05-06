package authz_function_cannot_repleace

invalid_replace {
	cannot_replace(input.label)
}

cannot_replace(label) {
	label == "test_label"
}
