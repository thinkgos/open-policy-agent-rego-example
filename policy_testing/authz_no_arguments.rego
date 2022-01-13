package authz_no_arguments

allow1 {
    allow2
}

allow2 {
    2 == 1
}

allow3 {
    not false
}

allow4 {
    not 1
}