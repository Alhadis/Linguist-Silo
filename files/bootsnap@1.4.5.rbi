# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   tapioca generate

# typed: true

module ActiveSupport
  extend(::ActiveSupport::Autoload)
  extend(::ActiveSupport::LazyLoadHooks)

  def parse_json_times; end
  def parse_json_times=(obj); end
  def test_order; end
  def test_order=(obj); end

  def self.eager_load!; end
  def self.escape_html_entities_in_json(*args, &block); end
  def self.escape_html_entities_in_json=(arg); end
  def self.gem_version; end
  def self.json_encoder(*args, &block); end
  def self.json_encoder=(arg); end
  def self.parse_json_times; end
  def self.parse_json_times=(obj); end
  def self.test_order; end
  def self.test_order=(obj); end
  def self.time_precision(*args, &block); end
  def self.time_precision=(arg); end
  def self.to_time_preserves_timezone; end
  def self.to_time_preserves_timezone=(value); end
  def self.use_standard_json_time_format(*args, &block); end
  def self.use_standard_json_time_format=(arg); end
  def self.version; end
end

module ActiveSupport::Dependencies
  extend(::Bootsnap::LoadPathCache::CoreExt::ActiveSupport::ClassMethods)
  extend(::ActiveSupport::Dependencies)

  def _eager_load_paths; end
  def _eager_load_paths=(obj); end
  def autoload_module!(into, const_name, qualified_name, path_suffix); end
  def autoload_once_paths; end
  def autoload_once_paths=(obj); end
  def autoload_paths; end
  def autoload_paths=(obj); end
  def autoloadable_module?(path_suffix); end
  def autoloaded?(desc); end
  def autoloaded_constants; end
  def autoloaded_constants=(obj); end
  def clear; end
  def constant_watch_stack; end
  def constant_watch_stack=(obj); end
  def constantize(name); end
  def depend_on(file_name, message = _); end
  def explicitly_unloadable_constants; end
  def explicitly_unloadable_constants=(obj); end
  def history; end
  def history=(obj); end
  def hook!; end
  def interlock; end
  def interlock=(obj); end
  def load?; end
  def load_file(path, const_paths = _); end
  def load_missing_constant(from_mod, const_name); end
  def load_once_path?(path); end
  def loadable_constants_for_path(path, bases = _); end
  def loaded; end
  def loaded=(obj); end
  def loading; end
  def loading=(obj); end
  def log(message); end
  def logger; end
  def logger=(obj); end
  def mark_for_unload(const_desc); end
  def mechanism; end
  def mechanism=(obj); end
  def new_constants_in(*descs); end
  def qualified_const_defined?(path); end
  def qualified_name_for(mod, name); end
  def reference(klass); end
  def remove_constant(const); end
  def remove_unloadable_constants!; end
  def require_or_load(file_name, const_path = _); end
  def safe_constantize(name); end
  def search_for_file(path_suffix); end
  def to_constant_name(desc); end
  def unhook!; end
  def verbose; end
  def verbose=(obj); end
  def warnings_on_first_load; end
  def warnings_on_first_load=(obj); end
  def will_unload?(const_desc); end

  private

  def real_mod_name(mod); end

  def self._eager_load_paths; end
  def self._eager_load_paths=(obj); end
  def self.autoload_once_paths; end
  def self.autoload_once_paths=(obj); end
  def self.autoload_paths; end
  def self.autoloaded_constants; end
  def self.autoloaded_constants=(obj); end
  def self.constant_watch_stack; end
  def self.constant_watch_stack=(obj); end
  def self.explicitly_unloadable_constants; end
  def self.explicitly_unloadable_constants=(obj); end
  def self.history; end
  def self.history=(obj); end
  def self.interlock; end
  def self.interlock=(obj); end
  def self.load_interlock; end
  def self.loaded; end
  def self.loaded=(obj); end
  def self.loading; end
  def self.loading=(obj); end
  def self.logger; end
  def self.logger=(obj); end
  def self.mechanism; end
  def self.mechanism=(obj); end
  def self.run_interlock; end
  def self.unload_interlock; end
  def self.verbose; end
  def self.verbose=(obj); end
  def self.warnings_on_first_load; end
  def self.warnings_on_first_load=(obj); end
end

ActiveSupport::Dependencies::Reference = T.let(T.unsafe(nil), ActiveSupport::Dependencies::ClassCache)

module Bootsnap
  extend(::Bootsnap)

  def bundler?; end

  def self.setup(cache_dir:, development_mode: _, load_path_cache: _, autoload_paths_cache: _, disable_trace: _, compile_cache_iseq: _, compile_cache_yaml: _); end
  def self.setup_disable_trace; end
end

module Bootsnap::CompileCache
  def self.permission_error(path); end
  def self.setup(cache_dir:, iseq:, yaml:); end
  def self.supported?; end
end

class Bootsnap::CompileCache::Error < ::StandardError
end

module Bootsnap::CompileCache::Native

  private

  def compile_option_crc32=(_); end
  def coverage_running?; end
  def fetch(_, _, _); end

  def self.compile_option_crc32=(_); end
  def self.coverage_running?; end
  def self.fetch(_, _, _); end
end

class Bootsnap::CompileCache::PermissionError < ::Bootsnap::CompileCache::Error
end

class Bootsnap::CompileCache::Uncompilable < ::StandardError
end

module Bootsnap::CompileCache::YAML
  def self.input_to_output(data); end
  def self.input_to_storage(contents, _); end
  def self.install!(cache_dir); end
  def self.msgpack_factory; end
  def self.msgpack_factory=(_); end
  def self.storage_to_output(data); end
end

module Bootsnap::ExplicitRequire
  def self.from_archdir(feature); end
  def self.from_rubylibdir(feature); end
  def self.from_self(feature); end
  def self.with_gems(*gems); end
end

Bootsnap::ExplicitRequire::ARCHDIR = T.let(T.unsafe(nil), String)

Bootsnap::ExplicitRequire::DLEXT = T.let(T.unsafe(nil), String)

Bootsnap::ExplicitRequire::RUBYLIBDIR = T.let(T.unsafe(nil), String)

class Bootsnap::InvalidConfiguration < ::StandardError
end

module Bootsnap::LoadPathCache
  def self.autoload_paths_cache; end
  def self.load_path_cache; end
  def self.loaded_features_index; end
  def self.realpath_cache; end
  def self.setup(cache_path:, development_mode:, active_support: _); end
  def self.supported?; end
end

Bootsnap::LoadPathCache::CACHED_EXTENSIONS = T.let(T.unsafe(nil), Array)

class Bootsnap::LoadPathCache::Cache
  def initialize(store, path_obj, development_mode: _); end

  def absolute_path?(path); end
  def find(feature); end
  def load_dir(dir); end
  def push_paths(sender, *paths); end
  def reinitialize(path_obj = _); end
  def unshift_paths(sender, *paths); end

  private

  def dir_changed?; end
  def expand_path(feature); end
  def maybe_append_extension(f); end
  def now; end
  def push_paths_locked(*paths); end
  def search_index(f); end
  def stale?; end
  def try_ext(f); end
  def try_index(f); end
  def unshift_paths_locked(*paths); end
end

Bootsnap::LoadPathCache::Cache::AGE_THRESHOLD = T.let(T.unsafe(nil), Integer)

Bootsnap::LoadPathCache::Cache::BUILTIN_FEATURES = T.let(T.unsafe(nil), Hash)

module Bootsnap::LoadPathCache::ChangeObserver
  def self.register(observer, arr); end
end

module Bootsnap::LoadPathCache::ChangeObserver::ArrayMixin
  def <<(entry); end
  def []=(*args, &block); end
  def clear(*args, &block); end
  def collect!(*args, &block); end
  def compact!(*args, &block); end
  def concat(entries); end
  def delete(*args, &block); end
  def delete_at(*args, &block); end
  def delete_if(*args, &block); end
  def fill(*args, &block); end
  def flatten!(*args, &block); end
  def insert(*args, &block); end
  def keep_if(*args, &block); end
  def map!(*args, &block); end
  def pop(*args, &block); end
  def push(*entries); end
  def reject!(*args, &block); end
  def replace(*args, &block); end
  def reverse!(*args, &block); end
  def rotate!(*args, &block); end
  def select!(*args, &block); end
  def shift(*args, &block); end
  def shuffle!(*args, &block); end
  def slice!(*args, &block); end
  def sort!(*args, &block); end
  def sort_by!(*args, &block); end
  def uniq!(*args); end
  def unshift(*entries); end
end

module Bootsnap::LoadPathCache::CoreExt
  def self.make_load_error(path); end
end

module Bootsnap::LoadPathCache::CoreExt::ActiveSupport
  def self.allow_bootsnap_retry(allowed); end
  def self.without_bootsnap_cache; end
end

module Bootsnap::LoadPathCache::CoreExt::ActiveSupport::ClassMethods
  def autoload_paths=(o); end
  def autoloadable_module?(path_suffix); end
  def depend_on(*_); end
  def load_missing_constant(from_mod, const_name); end
  def remove_constant(const); end
  def require_or_load(*_); end
  def search_for_file(path); end
end

Bootsnap::LoadPathCache::DLEXT = T.let(T.unsafe(nil), String)

Bootsnap::LoadPathCache::DL_EXTENSIONS = T.let(T.unsafe(nil), Array)

Bootsnap::LoadPathCache::DOT_RB = T.let(T.unsafe(nil), String)

Bootsnap::LoadPathCache::DOT_SO = T.let(T.unsafe(nil), String)

Bootsnap::LoadPathCache::ERROR_TAG_IVAR = T.let(T.unsafe(nil), Symbol)

class Bootsnap::LoadPathCache::FallbackScan < ::StandardError
end

class Bootsnap::LoadPathCache::LoadedFeaturesIndex
  def initialize; end

  def key?(feature); end
  def purge(feature); end
  def purge_multi(features); end
  def register(short, long = _); end

  private

  def strip_extension(f); end
end

class Bootsnap::LoadPathCache::Path
  def initialize(path); end

  def entries_and_dirs(store); end
  def expanded_path; end
  def non_directory?; end
  def path; end
  def relative?; end
  def stable?; end
  def volatile?; end

  private

  def latest_mtime(path, dirs); end
  def scan!; end
  def stability; end
end

Bootsnap::LoadPathCache::Path::RUBY_LIBDIR = T.let(T.unsafe(nil), String)

Bootsnap::LoadPathCache::Path::RUBY_SITEDIR = T.let(T.unsafe(nil), String)

Bootsnap::LoadPathCache::Path::STABLE = T.let(T.unsafe(nil), Symbol)

Bootsnap::LoadPathCache::Path::VOLATILE = T.let(T.unsafe(nil), Symbol)

module Bootsnap::LoadPathCache::PathScanner
  def self.call(path); end
end

Bootsnap::LoadPathCache::PathScanner::ALL_FILES = T.let(T.unsafe(nil), String)

Bootsnap::LoadPathCache::PathScanner::ALTERNATIVE_NATIVE_EXTENSIONS_PATTERN = T.let(T.unsafe(nil), Regexp)

Bootsnap::LoadPathCache::PathScanner::BUNDLE_PATH = T.let(T.unsafe(nil), String)

Bootsnap::LoadPathCache::PathScanner::NORMALIZE_NATIVE_EXTENSIONS = T.let(T.unsafe(nil), TrueClass)

Bootsnap::LoadPathCache::PathScanner::REQUIRABLE_EXTENSIONS = T.let(T.unsafe(nil), Array)

class Bootsnap::LoadPathCache::RealpathCache
  def initialize; end

  def call(*key); end

  private

  def find_file(name); end
  def realpath(caller_location, path); end
end

class Bootsnap::LoadPathCache::ReturnFalse < ::StandardError
end

Bootsnap::LoadPathCache::SLASH = T.let(T.unsafe(nil), String)

class Bootsnap::LoadPathCache::Store
  def initialize(store_path); end

  def fetch(key); end
  def get(key); end
  def set(key, value); end
  def transaction; end

  private

  def commit_transaction; end
  def dump_data; end
  def load_data; end
end

class Bootsnap::LoadPathCache::Store::NestedTransactionError < ::StandardError
end

class Bootsnap::LoadPathCache::Store::SetOutsideTransactionNotAllowed < ::StandardError
end

Bootsnap::VERSION = T.let(T.unsafe(nil), String)

module Kernel

  private

  def load(path, wrap = _); end
  def require_relative(path); end
  def require_with_bootsnap_lfi(path, resolved = _); end

  def self.load(path, wrap = _); end
  def self.require_relative(path); end
  def self.require_with_bootsnap_lfi(path, resolved = _); end
end

Kernel::RUBYGEMS_ACTIVATION_MONITOR = T.let(T.unsafe(nil), Monitor)

class Module
  include(::Module::Concerning)
  include(::ActiveSupport::Dependencies::ModuleConstMissing)

  def autoload(const, path); end
end

Module::DELEGATION_RESERVED_KEYWORDS = T.let(T.unsafe(nil), Array)

Module::DELEGATION_RESERVED_METHOD_NAMES = T.let(T.unsafe(nil), Set)

Module::RUBY_RESERVED_KEYWORDS = T.let(T.unsafe(nil), Array)
