# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/friendly_id/all/friendly_id.rbi
#
# friendly_id-5.3.0
module FriendlyId
  def self.defaults(&block); end
  def self.extended(model_class); end
  def self.included(model_class); end
  def self.mark_as_unfriendly(klass); end
  def self.table_name_prefix; end
end
module FriendlyId::Base
  def friendly; end
  def friendly_id(base = nil, options = nil, &block); end
  def friendly_id_config; end
  def primary_key_type; end
end
module FriendlyId::Model
  def dup; end
  def friendly_id; end
  def friendly_id_config; end
  def self.included(model_class); end
  def to_param; end
end
module FriendlyId::ObjectUtils
  def friendly_id?; end
  def unfriendly_id?; end
end
module FriendlyId::UnfriendlyUtils
  def friendly_id?; end
  def unfriendly_id?; end
end
class Object < BasicObject
  include FriendlyId::ObjectUtils
end
class Array
  include FriendlyId::UnfriendlyUtils
end
class FalseClass
  include FriendlyId::UnfriendlyUtils
end
class Hash
  include FriendlyId::UnfriendlyUtils
end
class NilClass
  include FriendlyId::UnfriendlyUtils
end
class Numeric
  include FriendlyId::UnfriendlyUtils
end
class Symbol
  include FriendlyId::UnfriendlyUtils
end
class TrueClass
  include FriendlyId::UnfriendlyUtils
end
class FriendlyId::Configuration
  def base(*value); end
  def base=(arg0); end
  def defaults; end
  def dependent; end
  def dependent=(arg0); end
  def finder_methods; end
  def finder_methods=(arg0); end
  def get_module(object); end
  def initialize(model_class, values = nil); end
  def model_class; end
  def model_class=(arg0); end
  def modules; end
  def query_field; end
  def routes; end
  def routes=(arg0); end
  def set(values); end
  def use(*modules); end
  def uses?(mod); end
end
module FriendlyId::FinderMethods
  def exists?(conditions = nil); end
  def exists_by_friendly_id?(id); end
  def find(*args); end
  def find_by_friendly_id(id); end
  def first_by_friendly_id(id); end
  def potential_primary_key?(id); end
  def raise_not_found_exception(id); end
end
module FriendlyId::Reserved
  def self.included(model_class); end
end
module FriendlyId::Reserved::Configuration
  def reserved_words; end
  def reserved_words=(arg0); end
  def treat_reserved_as_conflict; end
  def treat_reserved_as_conflict=(arg0); end
end
class FriendlyId::SlugGenerator
  def available?(slug); end
  def generate(candidates); end
  def initialize(scope, config); end
end
class FriendlyId::Candidates
  def candidates; end
  def each(*args, &block); end
  def filter(candidates); end
  def initialize(object, *array); end
  def normalize(candidates); end
  def reserved?(slug); end
  def to_candidate_array(object, array); end
  def wanted?(slug); end
  include Enumerable
end
module FriendlyId::Slugged
  def apply_slug_limit(candidate, uuid); end
  def candidate_limit(uuid); end
  def normalize_friendly_id(value); end
  def resolve_friendly_id_conflict(candidates); end
  def scope_for_slug_generator; end
  def self.included(model_class); end
  def set_slug(normalized_slug = nil); end
  def should_generate_new_friendly_id?; end
  def slug_generator; end
  def unset_slug_if_invalid; end
end
module FriendlyId::Slugged::Configuration
  def query_field; end
  def sequence_separator; end
  def sequence_separator=(arg0); end
  def slug_column; end
  def slug_column=(arg0); end
  def slug_generator_class; end
  def slug_generator_class=(arg0); end
  def slug_limit; end
  def slug_limit=(arg0); end
end
module FriendlyId::Finders
  def self.setup(model_class); end
end
module FriendlyId::Finders::ClassMethods
end
