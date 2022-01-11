package authz

# This test will pass.
test_ok {
    true
}

# This test will fail.
test_failure {
    1 == 2
}

# This test will error.
test_error {
    1 / 0
}

# This test will be skipped.
todo_test_missing_implementation {
    allow with data.roles as ["not", "implemented"]
}