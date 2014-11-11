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
Authorization: Bearer b65caaa6ebd39b34fe42c2656756beb7d5a95f6a4889af37ff4f51bd26e6165f
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 409
Content-Type: application/json; charset=utf-8
ETag: "ac6d4e2cf019367b4e2c84164e097800"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-List-TotalCount: 4
X-Request-Id: 6ef12c9a-cee3-41ad-bd9d-288130b9158b
X-Runtime: 0.016344
X-XSS-Protection: 1; mode=block

[
  {
    "id": 94,
    "name": "user2",
    "email": "user2@example.com",
    "_links": {
      "posts": {
        "href": "/v1/users/94/posts"
      }
    }
  },
  {
    "id": 95,
    "name": "user3",
    "email": "user3@example.com",
    "_links": {
      "posts": {
        "href": "/v1/users/95/posts"
      }
    }
  },
  {
    "id": 96,
    "name": "user4",
    "email": "user4@example.com",
    "_links": {
      "posts": {
        "href": "/v1/users/96/posts"
      }
    }
  },
  {
    "id": 97,
    "name": "user5",
    "email": "user5@example.com",
    "_links": {
      "posts": {
        "href": "/v1/users/97/posts"
      }
    }
  }
]
```

## PUT /v1/users/:user_id
Updates owned resource.

### Parameters
* `name` string (required) - Arbitrary name for user. It's not restricted to be unique.

### Example

#### Request
```
PUT /v1/users/98 HTTP/1.1
Accept: application/json
Authorization: Bearer 18e8fe34ecd466bff5cf6113a7f2029736c7babf0a7b37f2252fd8be704ff87c
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
X-Request-Id: abc6d410-75a5-4ba8-a935-18fd67c4ae79
X-Runtime: 0.010539
X-XSS-Protection: 1; mode=block
```

## PUT /v1/users/:user_id
Returns 403.

### Parameters
* `name` string (required) - Arbitrary name for user. It's not restricted to be unique.

### Example

#### Request
```
PUT /v1/users/99 HTTP/1.1
Accept: application/json
Authorization: Bearer 1d40a14652e5115ad0b0f5e814dbb7f9a0ca8390b04fc5c00e69049e82d7bede
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
X-Request-Id: 1694f236-5ec3-49b5-a8d8-a7f3c5343300
X-Runtime: 0.005772
X-XSS-Protection: 1; mode=block

{
  "status_code": 403,
  "error": "Authorized user is not allowed to take the requested operation write on User"
}
```

## GET /v1/users/:user_id
Returns user resource.

### Example

#### Request
```
GET /v1/users/101 HTTP/1.1
Accept: application/json
Authorization: Bearer c6840e4901f4c8780cd015af1e80619a7ec5bedc9008212926e0dca34b08fc9b
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
ETag: "7742c607b9217e7aff1369cbd9e017a4"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 15fc3745-33b3-4242-bf41-29428b05399c
X-Runtime: 0.006759
X-XSS-Protection: 1; mode=block

{
  "id": 101,
  "name": "alice",
  "email": "alice@example.com",
  "_links": {
    "posts": {
      "href": "/v1/users/101/posts"
    }
  }
}
```
