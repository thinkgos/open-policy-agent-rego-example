package authz

policies = [{"name": "test_policy"}]
roles = {"admin": ["alice"]}

test_allow_with_data {
    allow with input as {"user": "alice", "role": "admin"}  with data.policies as policies  with data.roles as roles
}