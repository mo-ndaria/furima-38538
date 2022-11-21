#usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname            | string | null: false |
| email             | string | null: false, unique: true|
| encrypted_password           | string | null: false |
| first_name         | string | null: false |
| last_name          | string | null: false |
| first_name_kana    | string | null: false |
| last_name_kana     | string | null: false |
| birthday           | date   | null: false |

has_many:items
has_many:orders



#itemsテーブル

| Column             | Type   | Options     　　|
| ------------------ | --------- | ----------- |
| name               | string    | null: false |
| text               | text      | null: false |
| category_id        | integer   | null: false |
| status_id          | integer   | null: false |
| freight_id         | integer   | null: false |
| prefecture_id      | integer   | null: false |
| ship_date_id       | integer   | null: false |
| price              | integer   | null: false |
| user            | references| null: false |

belongs_to:user
has_one:order

#ordersテーブル

| Column             | Type       | Options     |
| ------------------ | ------     | ----------- |
| user               | references | null: false,foreign_key: true |
| item               | references | null: false, foreign_key: true |


belongs_to:user
belongs_to:item
has_one:payment

#paymentsテーブル

| Column             | Type   | Options     |
| ------------------ | --------- | ----------- |
| postcode           | string       | null: false |
| prefecture_id      | integer      | null: false |
| city               | string       | null: false |
| block              | string       | null: false |
| building           | string       |             |
| phone              | string       | null: false |
| order              | references   | null: false, foreign_key: true|

belongs_to:order