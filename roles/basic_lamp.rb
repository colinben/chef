name "basic_lamp"
description "Builds a basic bare-bones LAMP stack."
run_list(
  "recipe[apache2]",
  "recipe[apache2::mod_ssl]",
  "recipe[apache2::mod_php5]",
  "recipe[mysql::server]"
)
override_attributes(
  :authorization => {
    :sudo => {
      :users => ["ubuntu"],
      :passwordless => true
    }
  }
)