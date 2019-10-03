# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   tapioca generate

# typed: true

module PackageCloud
end

module PackageCloud::Auth
  def self.get_token(url); end
end

module PackageCloud::CLI
end

class PackageCloud::CLI::Base < ::Thor

  private

  def client; end
  def config; end
  def get_valid(prompt); end
end

class PackageCloud::CLI::Distro < ::PackageCloud::CLI::Base
  def list(package_type); end

  private

  def parse_display_name(name); end
  def parse_version_name(name); end
end

class PackageCloud::CLI::Entry < ::PackageCloud::CLI::Base
  def distro(*args); end
  def gpg_key(*args); end
  def master_token(*args); end
  def promote(source_repo_desc, package_name, dest_repo_desc); end
  def push(repo, package_file, *package_files); end
  def read_token(*args); end
  def repository(*args); end
  def version; end
  def yank(repo_desc, package_name); end

  private

  def abort_if_snapshot!(files); end
  def create_package(client_repo, f, dist_id, files, ext, coordinates = _); end
  def create_package_skip_errors(client_repo, f, dist_id, files, ext, coordinates = _); end
  def find_and_verify(dir, files); end
  def get_valid(prompt); end
  def parse_and_verify_dsc(repo, f, dist_id); end
end

class PackageCloud::CLI::GpgKey < ::PackageCloud::CLI::Base
  def create(repo_name, file_path); end
  def destroy(repo_name, keyname); end
  def help(command = _, subcommand = _); end
  def list(repo_name); end
end

class PackageCloud::CLI::MasterToken < ::PackageCloud::CLI::Base
  def create(repo_name, token_name); end
  def destroy(repo_name, token_name); end
  def help(command = _, subcommand = _); end
  def list(repo_name); end
end

class PackageCloud::CLI::ReadToken < ::PackageCloud::CLI::Base
  def destroy(repo_name, master_and_read_token); end
  def help(command = _, subcommand = _); end
end

class PackageCloud::CLI::Repository < ::PackageCloud::CLI::Base
  def create(repo_name); end
  def help(command = _, subcommand = _); end
  def install(repo, package_type); end
  def list; end
end

class PackageCloud::Client
  def initialize(config); end

  def create_repo(name, priv); end
  def distributions; end
  def gem_version; end
  def repositories; end
  def repository(name); end
end

class PackageCloud::ConfigFile
  def initialize(filename = _, url = _); end

  def base_url(username = _, password = _); end
  def read_or_create; end
  def token; end
  def url; end

  private

  def assert_reasonable_gem_version; end
  def fix_config_file!; end
  def handle_locale; end
  def login_from_console; end
  def output_host_and_token; end
  def write; end
end

class PackageCloud::GpgKey < ::PackageCloud::Object
  def initialize(attrs, config); end

  def destroy; end
end

PackageCloud::MAJOR_VERSION = T.let(T.unsafe(nil), String)

PackageCloud::MINOR_VERSION = T.let(T.unsafe(nil), String)

class PackageCloud::MasterToken < ::PackageCloud::Object
  def initialize(attrs, config); end

  def destroy; end
  def read_tokens; end
end

class PackageCloud::Object
  def method_missing(method, *args, &block); end
  def respond_to?(method, include_priv = _); end
end

PackageCloud::PATCH_VERSION = T.let(T.unsafe(nil), String)

class PackageCloud::ReadToken < ::PackageCloud::Object
  def initialize(config, attrs); end

  def destroy(master_token_path, read_token_id); end
end

class PackageCloud::Repository < ::PackageCloud::Object
  def initialize(attrs, config); end

  def create_gpg_key(file_path); end
  def create_master_token(name); end
  def create_package(file_path, dist_id, files = _, filetype = _, coordinates = _); end
  def gpg_keys; end
  def install_script(type); end
  def master_tokens; end
  def parse_dsc(dsc_path, dist_id); end
  def private_human; end
  def promote(dist, package_name, dest_repo_name); end
  def yank(dist, package_name); end
end

class PackageCloud::Util
  def self.compute_url(base_url, path); end
end

PackageCloud::VERSION = T.let(T.unsafe(nil), String)

class PackageCloud::Validator
  def initialize(client); end

  def distribution_id(repo, filenames, package_type); end

  private

  def distributions; end
  def get_valid(prompt); end
  def select_dist(repo, filenames, package_type); end
  def select_from(list); end
end
