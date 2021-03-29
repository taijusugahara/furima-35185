# テーブル設計

## users テーブル

| Column                | Type   | Options     |
| ----------------------| ------ | ----------- |
| nickname              | string | null: false |
| email                 | string | null: false |
| password              | string | null: false |
| password_confirmation | string | null: false |
| first_name            | string | null: false |
| last_name             | string | null: false |
| first_name(kana)      | string | null: false |
| last_name(kana)       | string | null: false |
| birthday              | string | null: false |

### Association

- has_many :items
- has_many :orders

## items テーブル

| Column                | Type   | Options                        |
| ----------------------| ------ | ------------------------------ |
| image                 |        |                                |
| name                  | text   | null: false                    |
| explanation           | text   | null: false                    |
| category              | string | null: false                    |
| items_status          | string | null: false                    |
| derivery_way          | string | null: false                    |
| local_area            | string | null: false                    |
| derivery_days         | string | null: false                    |
| price                 | string | null: false                    |
| user_id               | string | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :order

## orders テーブル

| Column                | Type   | Options                        |
| ----------------------| ------ | ------------------------------ |
| card_number           | string | null: false                    |
| card_limit            | string | null: false                    |
| security_code         | string | null: false                    |
| postal_code           | string | null: false                    |
| prefecture            | string | null: false                    |
| town                  | string | null: false                    |
| address               | string | null: false                    |
| building              | string |                                |
| tell_number           | string | null: false                    |
| user_id               | string | null: false, foreign_key: true |
| item_id               | string | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item