json.set! :data do
  json.array! @reportesistemas do |reportesistema|
    json.partial! 'reportesistemas/reportesistema', reportesistema: reportesistema
    json.url  "
              #{link_to 'Show', reportesistema }
              #{link_to 'Edit', edit_reportesistema_path(reportesistema)}
              #{link_to 'Destroy', reportesistema, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end