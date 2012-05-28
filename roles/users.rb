name "users"
description "Run the Users cookbook off databag"
run_list(
  "recipe[users::sysadmins]"
)