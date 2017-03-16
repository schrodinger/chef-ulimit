default['ulimit']['pam_su_template_cookbook'] = nil
default['ulimit']['users'] = Mash.new
if node[:platform_family] == 'suse'
  # Suse has an atypical directory for ulimit settings
  default['ulimit']['security_limits_directory'] = '/etc/security'
else
  default['ulimit']['security_limits_directory'] = '/etc/security/limits.d'
end

default['ulimit']['ulimit_overriding_sudo_file_name'] = 'sudo'
default['ulimit']['ulimit_overriding_sudo_file_cookbook'] = nil
