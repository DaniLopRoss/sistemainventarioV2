json.set! :data do
  json.array! @area1s do |area1|
    json.partial! 'area1s/area1', area1: area1
    json.url  "
              #{link_to 'Show', area1 }
              #{link_to 'Edit', edit_area1_path(area1)}
              #{link_to 'Destroy', area1, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end