package authz.url.public

public_path = [
	{"method": "GET", "path": "/api/healthy"},
	{"method": "POST", "path": "/api/category"},
	{"method": "POST", "path": "/api/dict/[^/]+/item"},
	{"method": "POST", "path": "/api/banner/.*"},
]

allow {
	url_is_public
}

# public urls are visible for all users
url_is_public {
	obj := public_path[_]
	upper(obj.method) == upper(input.method)
	regex.match(sprintf("^%v$", [obj.path]), trim_suffix(input.path, "/"))
}
