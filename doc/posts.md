## DELETE /v1/posts/:post_id
Delete post resource.

### Example

#### Request
```
DELETE /v1/posts/65 HTTP/1.1
Accept: application/json
Authorization: Bearer e47d931df2fa10b15e702ec4812985e8c8353bb736594e03fcd4d60b5eb9ef75
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Set-Cookie: request_method=DELETE; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c7b07d22-66f8-4149-b877-6b7cb104ee10
X-Runtime: 0.034578
X-XSS-Protection: 1; mode=block
```

## POST /v1/posts
Creates post resource.

### Parameters
* `title` string (required) - You can not specify title as empty string.
* `body` string - Blog contents. Empty string is allowed.

### Example

#### Request
```
POST /v1/posts HTTP/1.1
Accept: application/json
Authorization: Bearer 6c426ef08ebadbd140657826e5f009e6a92fa3ea24734f1dad3bd5c078efb8b6
Content-Length: 38
Content-Type: application/json
Host: www.example.com

{
  "title": "abc",
  "body": "body for post"
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 66
Content-Type: application/json; charset=utf-8
ETag: "bc8562f567ec00b7573a7d2a45d36648"
Location: http://www.example.com/v1/posts/68
Set-Cookie: request_method=POST; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 078eb64e-35e9-4034-a6fd-4f3aa6fd6cdf
X-Runtime: 0.010770
X-XSS-Protection: 1; mode=block

{
  "id": 68,
  "title": "abc",
  "body": "body for post",
  "published_at": null
}
```

## GET /v1/posts/:post_id
Returns post resource.

### Example

#### Request
```
GET /v1/posts/71 HTTP/1.1
Accept: application/json
Authorization: Bearer b4dfcd3663fbd5b9d60804586313ac7d33e7565409d366f5eabb469f1c9c3888
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 86
Content-Type: application/json; charset=utf-8
ETag: "6587e695a4a1efaac22fb0a6d17a2878"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3fda6f99-0a4b-4257-9b11-77be7a6aff7e
X-Runtime: 0.005420
X-XSS-Protection: 1; mode=block

{
  "id": 71,
  "title": "MyString",
  "body": "MyText",
  "published_at": "2014-11-11T01:49:19.000Z"
}
```

## GET /v1/posts
Returns post resources.

### Parameters
* `page` integer - Parameter for pagination
* `per_page` integer - Parameter for pagination

### Example

#### Request
```
GET /v1/posts HTTP/1.1
Accept: application/json
Authorization: Bearer b227a58d0bf1ac372464345ea0dc1deaa9aa45543cd38eee7297f2df9d98f0b5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 262
Content-Type: application/json; charset=utf-8
ETag: "abda2303b39beabf9afc868b9067fc5f"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-List-TotalCount: 3
X-Request-Id: 448f5116-b574-46b4-ad37-f90ed058a100
X-Runtime: 0.007715
X-XSS-Protection: 1; mode=block

[
  {
    "id": 73,
    "title": "MyString",
    "body": "MyText",
    "published_at": "2014-11-11T01:49:20.000Z"
  },
  {
    "id": 74,
    "title": "MyString",
    "body": "MyText",
    "published_at": "2014-11-11T01:49:20.000Z"
  },
  {
    "id": 75,
    "title": "MyString",
    "body": "MyText",
    "published_at": "2014-11-11T01:49:20.000Z"
  }
]
```

## PUT /v1/posts/:post_id
Updates post resource.

### Parameters
* `title` string - You can not specify title as empty string.
* `body` string - Blog contents. Empty string is allowed.
* `published_at` string - If you specify this parameter, we publish the blog with current time. The parameter value is ignored.

### Example

#### Request
```
PUT /v1/posts/76 HTTP/1.1
Accept: application/json
Authorization: Bearer b03ca558d1d50bc0584a8561ddd15c330ba00f35483bd239697bd5cb52025310
Content-Length: 38
Content-Type: application/json
Host: www.example.com

{
  "title": "abc",
  "body": "body for post"
}
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Set-Cookie: request_method=PUT; path=/
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7f1766d6-ae86-495c-a17f-836f5db38788
X-Runtime: 0.015809
X-XSS-Protection: 1; mode=block
```
