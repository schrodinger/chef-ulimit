default['ulimit']['pam_su_template_cookbook'] = nil
default['ulimit']['users'] = Mash.new
if node[:platform] == 'suse'
  # Suse has an atypical directory for ulimit settings
  default['ulimit']['security_limits_directory'] = '/etc/security/limits.d'
else
  default['ulimit']['security_limits_directory'] = '/etc/security'
end

default['ulimit']['ulimit_overriding_sudo_file_name'] = 'sudo'
default['ulimit']['ulimit_overriding_sudo_file_cookbook'] = nil
