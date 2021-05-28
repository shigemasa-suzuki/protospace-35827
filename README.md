# README

# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | NOT: NULL   |
| email    | string | NOT: NULL   |
| password | string | NOT: NULL   |
| profile  | text   | NOT: NULL   |
| occupation |text  | NOT: NULL   |
| position | text   |NOT: NULL    |
### Association

- has_many :prototypes
- has_many :comments

## comments テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| user   | references |         |
| text   | text   |NOT: NULL    |
| prototype | references |      |
### Association

- belongs_to :prototype
- belongs_to :user

## prototypes テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| title    | string | NOT: NULL   |
| catch_copy | text | NOT: NULL   |
| concept | text | NOT: NULL      |
| image   | ActiveStorage   |     |
| user |references  |             |


### Association

- has_many :comments
- belongs_to :users

