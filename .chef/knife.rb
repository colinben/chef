current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "quicksnap"
client_key               "#{current_dir}/quicksnap.pem"
validation_client_name   "wup-validator"
validation_key           "#{current_dir}/wup-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/wup"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
