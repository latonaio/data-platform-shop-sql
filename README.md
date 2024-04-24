# data-platform-shop-sql 

data-platform-shop-sql は、データ連携基盤において、店舗データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-shop-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-shop-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-shop-sql-header-data.sql（データ連携基盤 店舗 - ヘッダデータ）
* data-platform-shop-sql-header-doc-data.sql（データ連携基盤 店舗 - ヘッダ文書データ）
* data-platform-shop-sql-partner-data.sql（データ連携基盤 店舗 - 取引先データ）
* data-platform-shop-sql-address-data.sql（データ連携基盤 店舗 - 住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
