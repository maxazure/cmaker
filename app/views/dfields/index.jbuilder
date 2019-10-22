json.list do
  json.array! @dfields do |dfield|
      json.id dfield.id
      json.key dfield.id
json.field_name dfield.field_name 
json.field_type dfield.field_type 
json.is_required dfield.is_required 
json.is_show_in_list dfield.is_show_in_list 
json.is_editable dfield.is_editable 
json.api dfield.api 
json.brick_id dfield.brick_id 

  end
end
json.pagination do
  json.total @dfields.count
  json.pageSize @page_size.to_i
  json.current @page.to_i
end
