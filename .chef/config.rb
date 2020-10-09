# See https://docs.getchef.com/config_rb.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "ram"
client_key               "#{current_dir}/ram.pem"
chef_server_url          "https://rambabuthoppey2c.mylabserver.com/organizations/ramacademy"
cookbook_path            ["#{current_dir}/../cookbooks"]
