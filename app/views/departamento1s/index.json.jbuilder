json.set! :data do
  json.array! @departamento1s do |departamento1|
    json.partial! 'departamento1s/departamento1', departamento1: departamento1
    json.url  "
              #{link_to 'Show', departamento1 }
              #{link_to 'Edit', edit_departamento1_path(departamento1)}
              #{link_to 'Destroy', departamento1, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end