# README

## デプロイURL
https://camera-concierge.herokuapp.com/


## データベース・テーブル設計

### camerasテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|index: true|
|price|integer||
|pixel|integer||
|min_iso|integer||
|max_iso|integer||
|continuous_shooting_performance|integer||
|shutter_speed|integer||
|monitor_size|integer||
|monitor_pixel|integer||
|max_num_of_shooting|integer||
|4k|boolean||
|wifi|boolean||
|touch_panel|boolean||
|move_panel|boolean||
|weight|float||
|width|float||
|height|float||
|depth|float||
|frame_id|references||
|maker_id|references||
|finder_id|references||

#### アソシエーション
- has_many :cameras_ranks
- has_many :ranks, through: :cameras_ranks
- has_many :reviews
- belongs_to :makers
- belongs_to :frames
- belongs_to :finders
- belongs_to :camera_types

### reviewsテーブル

|Column|Type|Options|
|------|----|-------|
|title|string||
|body|string||
|camera_id|references||

#### アソシエーション
- belongs_to :camera

### ranksテーブル

|Column|Type|Options|
|------|----|-------|
|title|string||

#### アソシエーション
- has_many :cameras_ranks
- has_many :cameras, through: :cameras_ranks

### cameras_ranksテーブル

|Column|Type|Options|
|------|----|-------|
|camera_id|reference||
|rank_id|reference||

#### アソシエーション
- belongs_to :camera
- belongs_to :rank

### makersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string||

#### アソシエーション
- has_many :cameras

### framesテーブル

|Column|Type|Options|
|------|----|-------|
|type|string||

#### アソシエーション
- has_many :cameras

### findersテーブル

|Column|Type|Options|
|------|----|-------|
|type|string||

#### アソシエーション
- has_many :cameras

### camera_typesテーブル

|Column|Type|Options|
|------|----|-------|
|type|string||

#### アソシエーション
- has_many :cameras
