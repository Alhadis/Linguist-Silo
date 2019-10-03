# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/activeresource/all/activeresource.rbi
#
# activeresource-2.3.18
module ActiveResource
end
module ActiveResource::Formats
  def self.[](mime_type_reference); end
end
module ActiveResource::Formats::XmlFormat
  def decode(xml); end
  def encode(hash, options = nil); end
  def extension; end
  def from_xml_data(data); end
  def mime_type; end
  extend ActiveResource::Formats::XmlFormat
end
module ActiveResource::Formats::JsonFormat
  def decode(json); end
  def encode(hash, options = nil); end
  def extension; end
  def mime_type; end
  extend ActiveResource::Formats::JsonFormat
end
class ActiveResource::ConnectionError < StandardError
  def initialize(response, message = nil); end
  def response; end
  def to_s; end
end
class ActiveResource::TimeoutError < ActiveResource::ConnectionError
  def initialize(message); end
  def to_s; end
end
class ActiveResource::SSLError < ActiveResource::ConnectionError
  def initialize(message); end
  def to_s; end
end
class ActiveResource::Redirection < ActiveResource::ConnectionError
  def to_s; end
end
class ActiveResource::ClientError < ActiveResource::ConnectionError
end
class ActiveResource::BadRequest < ActiveResource::ClientError
end
class ActiveResource::UnauthorizedAccess < ActiveResource::ClientError
end
class ActiveResource::ForbiddenAccess < ActiveResource::ClientError
end
class ActiveResource::ResourceNotFound < ActiveResource::ClientError
end
class ActiveResource::ResourceConflict < ActiveResource::ClientError
end
class ActiveResource::ResourceGone < ActiveResource::ClientError
end
class ActiveResource::ServerError < ActiveResource::ConnectionError
end
class ActiveResource::MethodNotAllowed < ActiveResource::ClientError
  def allowed_methods; end
end
class ActiveResource::Connection
  def apply_ssl_options(http); end
  def authorization_header; end
  def build_request_headers(headers, http_method = nil); end
  def configure_http(http); end
  def default_header; end
  def delete(path, headers = nil); end
  def format; end
  def format=(arg0); end
  def get(path, headers = nil); end
  def handle_response(response); end
  def head(path, headers = nil); end
  def http; end
  def http_format_header(http_method); end
  def initialize(site, format = nil); end
  def logger; end
  def new_http; end
  def password; end
  def password=(password); end
  def post(path, body = nil, headers = nil); end
  def proxy; end
  def proxy=(proxy); end
  def put(path, body = nil, headers = nil); end
  def request(method, path, *arguments); end
  def self.requests; end
  def site; end
  def site=(site); end
  def ssl_options; end
  def ssl_options=(opts = nil); end
  def timeout; end
  def timeout=(timeout); end
  def user; end
  def user=(user); end
end
class ActiveResource::Base
  def ==(other); end
  def as_json(options = nil); end
  def attributes; end
  def attributes=(arg0); end
  def clone; end
  def collection_path(options = nil); end
  def connection(refresh = nil); end
  def create; end
  def destroy; end
  def dup; end
  def element_path(options = nil); end
  def encode(options = nil); end
  def eql?(other); end
  def exists?; end
  def find_or_create_resource_for(name); end
  def find_or_create_resource_for_collection(name); end
  def find_resource_in_modules(resource_name, module_names); end
  def hash; end
  def id; end
  def id=(id); end
  def id_from_response(response); end
  def include_root_in_json; end
  def initialize(attributes = nil); end
  def load(attributes); end
  def load_attributes_from_response(response); end
  def logger; end
  def logger=(obj); end
  def method_missing(method_symbol, *arguments); end
  def new?; end
  def new_record?; end
  def prefix_options; end
  def prefix_options=(arg0); end
  def reload; end
  def respond_to?(method, include_priv = nil); end
  def respond_to_without_attributes?(*arg0); end
  def save; end
  def save_without_validation; end
  def self.collection_name; end
  def self.collection_name=(value); end
  def self.collection_path(prefix_options = nil, query_options = nil); end
  def self.connection(refresh = nil); end
  def self.create(attributes = nil); end
  def self.create_proxy_uri_from(proxy); end
  def self.create_site_uri_from(site); end
  def self.delete(custom_method_name, options = nil); end
  def self.element_name; end
  def self.element_name=(value); end
  def self.element_path(id, prefix_options = nil, query_options = nil); end
  def self.exists?(id, options = nil); end
  def self.find(*arguments); end
  def self.find_every(options); end
  def self.find_one(options); end
  def self.find_single(scope, options); end
  def self.format; end
  def self.format=(mime_type_reference_or_format); end
  def self.get(custom_method_name, options = nil); end
  def self.headers; end
  def self.include_root_in_json; end
  def self.include_root_in_json=(obj); end
  def self.instantiate_collection(collection, prefix_options = nil); end
  def self.instantiate_record(record, prefix_options = nil); end
  def self.logger; end
  def self.logger=(obj); end
  def self.orig_delete(id, options = nil); end
  def self.password; end
  def self.password=(password); end
  def self.post(custom_method_name, options = nil, body = nil); end
  def self.prefix(options = nil); end
  def self.prefix=(value = nil); end
  def self.prefix_parameters; end
  def self.prefix_source; end
  def self.primary_key; end
  def self.primary_key=(value); end
  def self.proxy; end
  def self.proxy=(proxy); end
  def self.put(custom_method_name, options = nil, body = nil); end
  def self.query_string(options); end
  def self.set_collection_name(value); end
  def self.set_element_name(value); end
  def self.set_prefix(value = nil); end
  def self.set_primary_key(value); end
  def self.site; end
  def self.site=(site); end
  def self.split_options(options = nil); end
  def self.ssl_options; end
  def self.ssl_options=(opts = nil); end
  def self.timeout; end
  def self.timeout=(timeout); end
  def self.user; end
  def self.user=(user); end
  def split_options(options = nil); end
  def to_param; end
  def to_xml(options = nil); end
  def update; end
  extend ActiveResource::CustomMethods::ClassMethods
  include ActiveResource::CustomMethods
  include ActiveResource::CustomMethods::InstanceMethods
  include ActiveResource::Validations
end
class ActiveResource::ResourceInvalid < ActiveResource::ClientError
end
class ActiveResource::Errors
  def [](attribute); end
  def add(attribute, msg); end
  def add_to_base(msg); end
  def clear; end
  def count; end
  def each; end
  def each_full; end
  def empty?(*args, &block); end
  def errors; end
  def from_array(messages); end
  def from_json(json); end
  def from_xml(xml); end
  def full_messages; end
  def initialize(base); end
  def invalid?(attribute); end
  def length; end
  def on(attribute); end
  def on_base; end
  def size; end
  include Enumerable
end
module ActiveResource::Validations
  def errors; end
  def save_with_validation; end
  def self.included(base); end
  def valid?; end
end
module ActiveResource::CustomMethods
  def self.included(base); end
end
module ActiveResource::CustomMethods::ClassMethods
  def custom_method_collection_url(method_name, options = nil); end
end
module ActiveResource::CustomMethods::InstanceMethods
  def custom_method_element_url(method_name, options = nil); end
  def custom_method_new_element_url(method_name, options = nil); end
  def delete(method_name, options = nil); end
  def get(method_name, options = nil); end
  def post(method_name, options = nil, body = nil); end
  def put(method_name, options = nil, body = nil); end
end
