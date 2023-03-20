AppConfig[:plugins] = ['aspace_static_plugins', 'container_management_labels', 'lcnaf']
AppConfig[:emory_ga_tracking_public] = 'G-83TR9951KC'
AppConfig[:pui_branding_img] = '/assets/images/shield.svg'
AppConfig[:pui_branding_img_alt_text] = 'Emory University Libraries Logo'
AppConfig[:emory_plugins_version] = 'v2023-03-20'
AppConfig[:container_management_labels_pagesize] = {
    "avery-5163" => {
        "size" => "letter",
        "margin" => "0.5in 0.125in"},
    "avery-22513" => {
        "size" => "letter",
        "margin" => "0.5in 0.125in"}
}
AppConfig[:container_management_labels] = [
    {"institution_name" => {
        "checked" => true,
        "disabled" => false}},
    {"repository_name" => {
        "checked" => true,
        "disabled" => false}},
    {"resource_id" => {
        "checked" => true,
        "disabled" => false}},
    {"agent_name" => {
        "checked" => true,
        "disabled" => false}},
    {"resource_title" => {
        "checked" => true,
        "disabled" => false}},
    {"type" => {
        "checked" => true,
        "disabled" => false}},
    {"indicator" => {
        "checked" => true,
        "disabled" => true}}
]
AppConfig[:pui_hide][:classification_badge] = true
AppConfig[:pui_hide][:accession_badge] = true
AppConfig[:pui_hide][:record_badge] = true
AppConfig[:pui_staff_link_mode] = 'readonly'
AppConfig[:container_management_extent_calculator] = { :report_volume => false, :unit => :feet, :decimal_places => 3 }
AppConfig[:record_inheritance] = {
  :archival_object => {
    :inherited_fields => [
                          {
                            :property => 'title',
                            :inherit_directly => false
                          },
                          {
                            :property => 'component_id',
                            :inherit_directly => false
                          },
                          {
                            :property => 'lang_materials',
                            :inherit_directly => false
                          },
                          {
                            :property => 'dates',
                            :inherit_directly => false
                          },
                          {
                            :property => 'extents',
                            :inherit_directly => false
                          },
                          {
                            :property => 'linked_agents',
                            :inherit_if => proc {|json| json.select {|j| j['role'] == 'creator'} },
                            :inherit_directly => false
                          },
                          {
                            :property => 'notes',
                            :inherit_if => proc {|json| json.select {|j| j['type'] == 'accessrestrict'} },
                            :inherit_directly => false
                          },
                          {
                            :property => 'notes',
                            :inherit_if => proc {|json| json.select {|j| j['type'] == 'scopecontent'} },
                            :inherit_directly => false
                          },
                          {
                            :property => 'notes',
                            :inherit_if => proc {|json| json.select {|j| j['type'] == 'langmaterial'} },
                            :inherit_directly => false
                          },
                         ]
  }
}
