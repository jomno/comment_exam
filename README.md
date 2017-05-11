# 멋사 5기 동대 5주차 예제 코드

멋사화이팅

## bash 명령어 코드들

컨트롤러 만들기
```sh
rails g controller home index list show
```
모델 만들기
```sh
rails g model post title:string content:text
rails g model comment body:string post_id:integer
```
사실... string형태는 생략이 가능합니다. 밑에 처럼도 가능함!
```sh
rails g model post title content:text
rails g model comment body post_id:integer
```
## 관계 설정하기
app/model/post.rb
```ruby
has_many :comments
```
app/model/comment.rb
```ruby
belongs_to :post
```

