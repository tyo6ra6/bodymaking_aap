# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false               |
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |
| sex_id             | integer             | null: false               |
| generation_id      | integer             | null: false               |
| height             | integer             | null: false               |
| body_weight        | integer             | null: false               |

　
### Association

* has_many :records
* has_many :comments

## records table

| Column            | Type       | Options                        |
|------------------ |------------|--------------------------------|
| day              | date       | null: false                    |
| training_site_id  | integer    | null: false                    |
| training_event_id | integer    | null: false                    |
| weight            | integer    | null: false                    |
| times_id          | integer    | null: false                    |
| thoughts          | text       |                                |

### Association

- belongs_to :user


## comments table

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| user        | references | null: false, foreign_key: true |
| record      | references | null: false, foreign_key: true |
| text        | text       | null: false                    |

### Association

- belongs_to :user
- belongs_to :record



