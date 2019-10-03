# This is an autogenerated file for dynamic methods in Opportunity
# Please rerun rake rails_rbi:models to regenerate.
# typed: strong

class Opportunity::Relation < ActiveRecord::Relation
  include Opportunity::NamedScope
  extend T::Generic
  Elem = type_member(fixed: Opportunity)
end

class Opportunity < ApplicationRecord
  extend T::Sig
  extend T::Generic
  extend Opportunity::NamedScope
  Elem = type_template(fixed: Opportunity)

  sig { returns(T.nilable(String)) }
  def company(); end

  sig { params(value: T.nilable(String)).void }
  def company=(value); end

  sig { returns(T.nilable(String)) }
  def contact(); end

  sig { params(value: T.nilable(String)).void }
  def contact=(value); end

  sig { returns(T.nilable(String)) }
  def content(); end

  sig { params(value: T.nilable(String)).void }
  def content=(value); end

  sig { returns(DateTime) }
  def created_at(); end

  sig { params(value: DateTime).void }
  def created_at=(value); end

  sig { returns(String) }
  def email(); end

  sig { params(value: String).void }
  def email=(value); end

  sig { returns(DateTime) }
  def good_until(); end

  sig { params(value: DateTime).void }
  def good_until=(value); end

  sig { returns(Integer) }
  def id(); end

  sig { params(value: Integer).void }
  def id=(value); end

  sig { returns(T.nilable(T::Boolean)) }
  def paid_position(); end

  sig { params(value: T.nilable(T::Boolean)).void }
  def paid_position=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def paid_position?(*args); end

  sig { returns(T.nilable(String)) }
  def title(); end

  sig { params(value: T.nilable(String)).void }
  def title=(value); end

  sig { returns(DateTime) }
  def updated_at(); end

  sig { params(value: DateTime).void }
  def updated_at=(value); end

  sig { returns(T.nilable(User)) }
  def user(); end

  sig { params(value: T.nilable(User)).void }
  def user=(value); end

  sig { returns(T.nilable(Integer)) }
  def user_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def user_id=(value); end
end

module Opportunity::NamedScope
  extend T::Sig

  sig { returns(Opportunity::Relation) }
  def all(); end

  sig { params(args: T.untyped).returns(Opportunity::Relation) }
  def closed(*args); end

  sig { params(args: T.untyped).returns(Opportunity::Relation) }
  def open(*args); end

  sig { params(args: T.untyped).returns(Opportunity::Relation) }
  def sorted(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def select(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def order(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def reorder(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def group(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def limit(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def offset(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def joins(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def left_joins(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def left_outer_joins(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def where(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def rewhere(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def preload(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def eager_load(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def includes(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def from(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def lock(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def readonly(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def extending(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def or(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def having(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def create_with(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def distinct(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def references(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def none(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def unscope(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def merge(*args, block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Opportunity::Relation) }
  def except(*args, block); end
end
