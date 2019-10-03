# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/site_ruby/all/site_ruby.rbi
#
# site_ruby-2.4.0
class Gem::SourceList
  def <<(obj); end
  def ==(other); end
  def clear; end
  def delete(source); end
  def each(&block); end
  def each_source(&b); end
  def empty?; end
  def first; end
  def include?(other); end
  def initialize; end
  def initialize_copy(other); end
  def replace(other); end
  def self.from(ary); end
  def sources; end
  def to_a; end
  def to_ary; end
  include Enumerable
end
module Psych
end
class Psych::PrivateType
end
module Gem
end
class Gem::NoAliasYAMLTree < Psych::Visitors::YAMLTree
  def format_time(time); end
  def register(target, obj); end
  def visit_String(str); end
end
module Gem::SafeYAML
  def self.load(input); end
  def self.safe_load(input); end
end
module Psych::Syck
end
class Psych::Syck::DefaultKey
  def to_s; end
end
class Gem::DependencyList
  def active_count(specs, ignored); end
  def add(*gemspecs); end
  def clear; end
  def dependency_order; end
  def development; end
  def development=(arg0); end
  def each(&block); end
  def find_name(full_name); end
  def initialize(development = nil); end
  def inspect; end
  def ok?; end
  def ok_to_remove?(full_name, check_dev = nil); end
  def remove_by_name(full_name); end
  def remove_specs_unsatisfied_by(dependencies); end
  def self.from_specs; end
  def spec_predecessors; end
  def specs; end
  def tsort_each_child(node); end
  def tsort_each_node(&block); end
  def why_not_ok?(quick = nil); end
  include Enumerable
  include TSort
end
