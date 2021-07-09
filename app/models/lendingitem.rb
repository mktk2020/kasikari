class Lendingitem < ApplicationRecord
    validates :item, presence: {message: '商品名を入力してください'}
    validates :category, presence: {message: 'カテゴリーよりお選びください。'}
    #validates :image_name, presence: {message: '商品画像を挿入してください。'} 
    validates :price, presence: {message: '1日当たりの単価を入力してください。'}
    validates :days, presence: {message: '最長レンタル可能日数を入力してください。'}



end
