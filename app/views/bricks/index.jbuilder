json.list do
  json.array! @bricks do |brick|
      json.id brick.id
      json.key brick.id
json.name brick.name 
json.table_type brick.table_type 
json.name_plural brick.name_plural 
json.parent_dir brick.parent_dir 
json.api_path brick.api_path 

  end
end
json.pagination do
  json.total @bricks.count
  json.pageSize @page_size.to_i
  json.current @page.to_i
end
