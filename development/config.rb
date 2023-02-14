AppConfig[:plugins] = ['aspace_static_plugins', 'container_management_labels']
AppConfig[:emory_ga_tracking_public] = ''
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