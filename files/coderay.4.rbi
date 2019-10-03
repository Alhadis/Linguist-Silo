# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/coderay/all/coderay.rbi
#
# coderay-1.1.1
module CodeRay
  def self.coderay_path(*path); end
  def self.encode(code, lang, format, options = nil); end
  def self.encode_file(filename, format, options = nil); end
  def self.encode_tokens(tokens, format, options = nil); end
  def self.encoder(format, options = nil); end
  def self.get_scanner_options(options); end
  def self.highlight(code, lang, options = nil, format = nil); end
  def self.highlight_file(filename, options = nil, format = nil); end
  def self.scan(code, lang, options = nil, &block); end
  def self.scan_file(filename, lang = nil, options = nil, &block); end
  def self.scanner(lang, options = nil, &block); end
end
module CodeRay::PluginHost
  def [](id, *args, &blk); end
  def all_plugins; end
  def const_missing(const); end
  def default(id = nil); end
  def list; end
  def load(id, *args, &blk); end
  def load_all; end
  def load_plugin_map; end
  def make_plugin_hash; end
  def map(hash); end
  def path_to(plugin_id); end
  def plugin_hash; end
  def plugin_path(*args); end
  def register(plugin, id); end
  def self.extended(mod); end
  def validate_id(id); end
end
class CodeRay::PluginHost::PluginNotFound < LoadError
end
class CodeRay::PluginHost::HostNotFound < LoadError
end
module CodeRay::Encoders
  extend CodeRay::PluginHost
end
module CodeRay::Plugin
  def aliases; end
  def plugin_host(host = nil); end
  def plugin_id; end
  def register_for(id); end
  def title(title = nil); end
end
class CodeRay::Encoders::Encoder
  def <<(token); end
  def begin_group(kind); end
  def begin_line(kind); end
  def compile(tokens, options = nil); end
  def encode(code, lang, options = nil); end
  def encode_tokens(tokens, options = nil); end
  def end_group(kind); end
  def end_line(kind); end
  def file_extension; end
  def finish(options); end
  def get_output(options); end
  def highlight(code, lang, options = nil); end
  def initialize(options = nil); end
  def options; end
  def options=(arg0); end
  def output(data); end
  def scanner; end
  def scanner=(arg0); end
  def self.const_missing(sym); end
  def self.file_extension; end
  def setup(options); end
  def text_token(text, kind); end
  def token(content, kind); end
  def tokens(tokens, options = nil); end
  extend CodeRay::Plugin
end
class CodeRay::Encoders::Terminal < CodeRay::Encoders::Encoder
  def begin_group(kind); end
  def begin_line(kind); end
  def end_group(kind); end
  def end_line(kind); end
  def open_token(kind); end
  def setup(options); end
  def text_token(text, kind); end
end
