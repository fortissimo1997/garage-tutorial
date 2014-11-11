## GET /v1/users/:user_id
Returns user resource.

### Example

#### Request
```
GET /v1/users/247 HTTP/1.1
Accept: application/json
Authorization: Bearer 97ca0eba85f83c06e46ff61cdf468776c6d5aed384d949bc539f4dfc4af8214b
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 103
Content-Type: application/json; charset=utf-8
ETag: "9247ae53c367d55ebbebaa5b432baf40"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7cf7447e-0e73-4101-8eac-c2fc788f8cdf
X-Runtime: 0.010674
X-XSS-Protection: 1; mode=block

{
  "id": 247,
  "name": "alice",
  "email": "alice@example.com",
  "_links": {
    "posts": {
      "href": "/v1/users/247/posts"
    }
  }
}
```

## PUT /v1/users/:user_id
Updates owned resource.

### Parameters
* `name` string (required) - Arbitrary name for user. It's not restricted to be unique.

### Example

#### Request
```
PUT /v1/users/249 HTTP/1.1
Accept: application/json
Authorization: Bearer 8aa8b094149af30a06dfd1c04df07b0be9bc44bf2d7b6544535d9387fa7f72ac
Content-Length: 8
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=bob
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Set-Cookie: request_method=PUT; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: eb9974b2-9049-487d-a7a2-3cecded2bd9c
X-Runtime: 0.008708
X-XSS-Protection: 1; mode=block
```

## PUT /v1/users/:user_id
Returns 403.

### Parameters
* `name` string (required) - Arbitrary name for user. It's not restricted to be unique.

### Example

#### Request
```
PUT /v1/users/250 HTTP/1.1
Accept: application/json
Authorization: Bearer c1417f190cea79e388232cf64200fd2d09ba4ddf705258e8788ac1e7dc6c825e
Content-Length: 8
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=bob
```

#### Response
```
HTTP/1.1 403
Cache-Control: no-cache
Content-Length: 106
Content-Type: application/json; charset=utf-8
Set-Cookie: request_method=PUT; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 6b1bbe11-f43b-4963-a8a6-490ac4985b86
X-Runtime: 0.004814
X-XSS-Protection: 1; mode=block

{
  "status_code": 403,
  "error": "Authorized user is not allowed to take the requested operation write on User"
}
```

## GET /v1/users
Returns user resources.

### Parameters
* `page` integer - Parameter for pagination.
* `per_page` integer - Parameter for pagination.

### Example

#### Request
```
GET /v1/users HTTP/1.1
Accept: application/json
Authorization: Bearer dc5765b48295b32836bc9c274f3bf6b37b6a3f03e429222100b99b7915808e3f
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 425
Content-Type: application/json; charset=utf-8
ETag: "ada215d791cbc343df227dcf5033ceb7"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-List-TotalCount: 4
X-Request-Id: 14cac204-e8da-4c01-a249-8d8d8fd86bd1
X-Runtime: 0.009157
X-XSS-Protection: 1; mode=block

[
  {
    "id": 252,
    "name": "user21",
    "email": "user21@example.com",
    "_links": {
      "posts": {
        "href": "/v1/users/252/posts"
      }
    }
  },
  {
    "id": 253,
    "name": "user22",
    "email": "user22@example.com",
    "_links": {
      "posts": {
        "href": "/v1/users/253/posts"
      }
    }
  },
  {
    "id": 254,
    "name": "user23",
    "email": "user23@example.com",
    "_links": {
      "posts": {
        "href": "/v1/users/254/posts"
      }
    }
  },
  {
    "id": 255,
    "name": "user24",
    "email": "user24@example.com",
    "_links": {
      "posts": {
        "href": "/v1/users/255/posts"
      }
    }
  }
]
```
