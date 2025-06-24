AppConfig[:plugins] = ['aspace_static_plugins', 'container_management_labels', 'lcnaf', 'aeon-fulfillment-plugin', 'uga-archivesspace-reports']
AppConfig[:public_url] = "http://localhost:3001"
# AppConfig[:archivesspace_version] = "4.1.0"
AppConfig[:emory_ga_tracking_public] = ''
AppConfig[:pui_branding_img] = '/assets/images/shield.svg'
AppConfig[:pui_branding_img_alt_text] = 'Emory University Libraries Logo'
AppConfig[:emory_plugins_version] = 'v2025-06-24'
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

# Aeon Fulfillment Plugin Settings
AppConfig[:aeon_fulfillment] = {
  "pitts" => {
    :aeon_site_code => "THEOLOGYEU",
    :aeon_web_url => "https://emorytest.aeon.atlas-sys.com/Logon",
    :aeon_return_link_label => "Return to ArchivesSpace",
    :aeon_external_system_id => "ArchivesSpace",
    :top_container_mode => true,
    :requests_permitted_for_containers_only => true,
    :request_in_new_tab => true,
    :hide_button_for_access_restriction_types => ['Restricted']
  },
  "eua" => {
    :aeon_site_code => "MARBLEU",
    :aeon_web_url => "https://emorytest.aeon.atlas-sys.com/Logon",
    :aeon_return_link_label => "Return to ArchivesSpace",
    :aeon_external_system_id => "ArchivesSpace",
    :top_container_mode => true,
    :requests_permitted_for_containers_only => true,
    :request_in_new_tab => true,
    :hide_button_for_access_restriction_types => ['Restricted']
  },
  "law" => {
    :aeon_site_code => "LAWEU",
    :aeon_web_url => "https://emorytest.aeon.atlas-sys.com/Logon",
    :aeon_return_link_label => "Return to ArchivesSpace",
    :aeon_external_system_id => "ArchivesSpace",
    :top_container_mode => true,
    :requests_permitted_for_containers_only => true,
    :request_in_new_tab => true,
    :hide_button_for_access_restriction_types => ['Restricted']
  },
  "whscl" => {
    :aeon_site_code => "HEALTHEU",
    :aeon_web_url => "https://emorytest.aeon.atlas-sys.com/Logon",
    :aeon_return_link_label => "Return to ArchivesSpace",
    :aeon_external_system_id => "ArchivesSpace",
    :top_container_mode => true,
    :requests_permitted_for_containers_only => true,
    :request_in_new_tab => true,
    :hide_button_for_access_restriction_types => ['Restricted']
  },
  "oxford" => {
    :aeon_site_code => "OXFORDEU",
    :aeon_web_url => "https://emorytest.aeon.atlas-sys.com/Logon",
    :aeon_return_link_label => "Return to ArchivesSpace",
    :aeon_external_system_id => "ArchivesSpace",
    :top_container_mode => true,
    :requests_permitted_for_containers_only => true,
    :request_in_new_tab => true,
    :hide_button_for_access_restriction_types => ['Restricted']
  },
  "rose" => {
    :aeon_site_code => "MARBLEU",
    :aeon_web_url => "https://emorytest.aeon.atlas-sys.com/Logon",
    :aeon_return_link_label => "Return to ArchivesSpace",
    :aeon_external_system_id => "ArchivesSpace",
    :top_container_mode => true,
    :requests_permitted_for_containers_only => true,
    :request_in_new_tab => true,
    :hide_button_for_access_restriction_types => ['Restricted']
  }
}
