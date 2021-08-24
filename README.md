# テーブル設計

## users テーブル

| Column         | Type    | Option      |
|----------------|---------|-------------|
| email          | string  | null: false |
| password       | string  | null: false |
| nickname       | string  | null: false |
| profile        | text    | null: false |


## likes テーブル

| Column         | Type       | Option      | 
|----------------|------------|-------------|
| like           |            |             |
| user           | references |             |
| collection     | references |             |


## collections テーブル
 
| Column         | Type         | Option      |
|----------------|--------------|-------------|
| tweet          | string       | null: false |
| image          | ActiveStorage|             |
| user           | references   |             |

