json.extract! lendingitem, :id, :jancode, :item, :category, :image_name, :price, :days, :memo, :created_at, :updated_at
json.url lendingitem_url(lendingitem, format: :json)
