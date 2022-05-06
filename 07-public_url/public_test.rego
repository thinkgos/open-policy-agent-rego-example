package authz.url.public

test_allow_get {
	allow with input as {"method": "get", "path": "/api/healthy"}
}

test_allow_get_suffix {
	allow with input as {"method": "get", "path": "/api/healthy/"}
}

test_allow_post {
	allow with input as {"method": "POST", "path": "/api/category"}
}

test_allow_pattern {
	allow with input as {"method": "POST", "path": "/api/dict/abcd/item"}
}

test_not_allow_pattern {
	not allow with input as {"method": "POST", "path": "/api/dict/abcd/item/keys"}
}

test_allow_pattern_more {
	allow with input as {"method": "POST", "path": "/api/banner/a/c"}
}

test_not_allow_pattern_more {
	not allow with input as {"method": "POST", "path": "/api/banner"}
}
