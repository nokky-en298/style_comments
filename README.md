# DB 設計

## users table

| Column             | Type                | Options                  |
|--------------------|---------------------|--------------------------|
| name               | string              | null: false              |
| email              | string              | null: false unique: true |
| password           | string              | null: false              |

### Association

- has_many :styles
- has_many :comments
- has_many :likes


## styles table

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
| title_id                            | integer    | null: false                    |
| quality                             | text       | null: false                    |
| item                                | text       | null: false                    |
| remark                              | text       | null: false                    |
| user                                | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- has_many :likes

## comments table

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| content     | text       | null: false                    |
| user        | references | null: false, foreign_key: true |
| style       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :style

## likes table

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| user        | references | null: false, foreign_key: true |
| style       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :style