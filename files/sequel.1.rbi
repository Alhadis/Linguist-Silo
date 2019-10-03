module Sequel
  def self.Model(source); end
  def self.[](arg = nil, &block); end
  def self.adapter_method(adapter, *args, &block); end
  def self.ado(*args, &block); end
  def self.amalgalite(*args, &block); end
  def self.condition_specifier?(obj); end
  def self.connect(*args, &block); end
  def self.convert_exception_class(exception, klass); end
  def self.convert_two_digit_years; end
  def self.convert_two_digit_years=(arg0); end
  def self.core_extensions?; end
  def self.datetime_class; end
  def self.datetime_class=(arg0); end
  def self.def_adapter_method(*adapters); end
  def self.elapsed_seconds_since(timer); end
  def self.extension(*extensions); end
  def self.ibmdb(*args, &block); end
  def self.inflections; end
  def self.jdbc(*args, &block); end
  def self.json_parser_error_class; end
  def self.mock(*args, &block); end
  def self.mysql(*args, &block); end
  def self.mysql2(*args, &block); end
  def self.object_to_json(obj, *args, &block); end
  def self.odbc(*args, &block); end
  def self.oracle(*args, &block); end
  def self.orig_require(arg0); end
  def self.parse_json(json); end
  def self.postgres(*args, &block); end
  def self.recursive_map(array, converter); end
  def self.require(files, subdir = nil); end
  def self.single_threaded; end
  def self.single_threaded=(arg0); end
  def self.split_symbol(sym); end
  def self.split_symbols=(v); end
  def self.split_symbols?; end
  def self.sqlanywhere(*args, &block); end
  def self.sqlite(*args, &block); end
  def self.start_timer; end
  def self.string_to_date(string); end
  def self.string_to_datetime(string); end
  def self.string_to_time(string); end
  def self.synchronize(&block); end
  def self.tinytds(*args, &block); end
  def self.transaction(dbs, opts = nil, &block); end
  def self.version; end
  def self.virtual_row(&block); end
  extend Sequel::SQL::Builders
  extend Sequel::SQL::OperatorBuilders
  extend Sequel::Timezones
  include Sequel::SQL::Constants
  def self.pg_array(a, b); end
end
module Sequel::Deprecation
  def self.backtrace_filter; end
  def self.backtrace_filter=(arg0); end
  def self.deprecate(method, instead = nil); end
  def self.deprecate_constant(mod, constant); end
  def self.output; end
  def self.output=(arg0); end
  def self.prefix; end
  def self.prefix=(arg0); end
end
class Sequel::BasicObject < BasicObject
  def self.const_missing(name); end
end
class Sequel::LiteralString < String
  def inspect; end
  def lit(*args); end
  def to_sequel_blob; end
  include Sequel::SQL::AliasMethods
  include Sequel::SQL::BooleanMethods
  include Sequel::SQL::CastMethods
  include Sequel::SQL::ComplexExpressionMethods
  include Sequel::SQL::InequalityMethods
  include Sequel::SQL::NumericMethods
  include Sequel::SQL::OrderMethods
  include Sequel::SQL::StringMethods
end
class Sequel::SQLTime < Time
  def inspect; end
  def self.create(hour, minute, second, usec = nil); end
  def self.date; end
  def self.date=(arg0); end
  def self.parse(*arg0); end
  def to_s(*args); end
end
module Sequel::SQL
end
class Sequel::SQL::Expression
  def ==(other); end
  def clone; end
  def dup; end
  def eql?(other); end
  def hash; end
  def inspect; end
  def self.attr_reader(*args); end
  def self.comparison_attrs; end
  def self.inherited(subclass); end
  def self.to_s_method(meth, args = nil); end
end
class Sequel::SQL::ComplexExpression < Sequel::SQL::Expression
  def args; end
  def initialize(op, *args); end
  def op; end
  def sql_boolean; end
  def sql_number; end
  def sql_string; end
  def to_s_append(ds, sql); end
  include Sequel::SQL::AliasMethods
  include Sequel::SQL::CastMethods
  include Sequel::SQL::OrderMethods
  include Sequel::SQL::PatternMatchMethods
  include Sequel::SQL::SubscriptMethods
end
class Sequel::SQL::GenericExpression < Sequel::SQL::Expression
  include Sequel::SQL::AliasMethods
  include Sequel::SQL::BooleanMethods
  include Sequel::SQL::CastMethods
  include Sequel::SQL::ComplexExpressionMethods
  include Sequel::SQL::InequalityMethods
  include Sequel::SQL::NumericMethods
  include Sequel::SQL::OrderMethods
  include Sequel::SQL::PatternMatchMethods
  include Sequel::SQL::StringMethods
  include Sequel::SQL::SubscriptMethods
end
module Sequel::SQL::AliasMethods
  def as(aliaz, columns = nil); end
end
module Sequel::SQL::BitwiseMethods
  def %(o); end
  def &(o); end
  def <<(o); end
  def >>(o); end
  def ^(o); end
  def |(o); end
  def ~; end
end
module Sequel::SQL::BooleanMethods
  def &(o); end
  def |(o); end
  def ~; end
end
module Sequel::SQL::Builders
  def as(exp, aliaz, columns = nil); end
  def asc(arg, opts = nil); end
  def blob(s); end
  def case(*args); end
  def cast(arg, sql_type); end
  def cast_numeric(arg, sql_type = nil); end
  def cast_string(arg, sql_type = nil); end
  def char_length(arg); end
  def deep_qualify(qualifier, expr); end
  def delay(&block); end
  def desc(arg, opts = nil); end
  def expr(arg = nil, &block); end
  def extract(datetime_part, exp); end
  def function(name, *args); end
  def identifier(name); end
  def ilike(*args); end
  def join(args, joiner = nil); end
  def like(*args); end
  def lit(s, *args); end
  def negate(arg); end
  def or(arg); end
  def qualify(qualifier, identifier); end
  def subscript(exp, *subs); end
  def trim(arg); end
  def value_list(arg); end
end
module Sequel::SQL::CastMethods
  def cast(sql_type); end
  def cast_numeric(sql_type = nil); end
  def cast_string(sql_type = nil); end
end
module Sequel::SQL::ComplexExpressionMethods
  def extract(datetime_part); end
  def sql_boolean; end
  def sql_number; end
  def sql_string; end
end
module Sequel::SQL::InequalityMethods
  def <(o); end
  def <=(o); end
  def >(o); end
  def >=(o); end
end
module Sequel::SQL::NumericMethods
  def *(o); end
  def **(o); end
  def +(ce); end
  def -(o); end
  def /(o); end
  def coerce(other); end
end
module Sequel::SQL::PatternMatchMethods
  def !~(other); end
  def =~(other); end
end
module Sequel::SQL::OperatorBuilders
  def &(*args); end
  def *(*args); end
  def **(a, b); end
  def +(*args); end
  def -(*args); end
  def /(*args); end
  def |(*args); end
  def ~(arg); end
end
module Sequel::SQL::OrderMethods
  def asc(opts = nil); end
  def desc(opts = nil); end
end
module Sequel::SQL::QualifyingMethods
  def *(ce = nil); end
  def [](identifier); end
  def qualify(qualifier); end
end
module Sequel::SQL::StringMethods
  def ilike(*ces); end
  def like(*ces); end
end
module Sequel::SQL::StringConcatenationMethods
  def +(ce); end
end
module Sequel::SQL::SubscriptMethods
  def sql_subscript(*sub); end
end
class Sequel::SQL::AliasedExpression < Sequel::SQL::Expression
  def alias; end
  def columns; end
  def expression; end
  def initialize(expression, aliaz, columns = nil); end
  def to_s_append(ds, sql); end
end
class Sequel::SQL::Blob < String
  def inspect; end
  def lit(*args); end
  def self.call(*arg0); end
  def to_sequel_blob; end
  include Sequel::SQL::AliasMethods
  include Sequel::SQL::CastMethods
end
class Sequel::SQL::BooleanExpression < Sequel::SQL::ComplexExpression
  def &(ce); end
  def self.from_value_pair(l, r); end
  def self.from_value_pairs(pairs, op = nil, negate = nil); end
  def self.invert(ce); end
  def sql_boolean; end
  def |(ce); end
  include Sequel::SQL::BooleanMethods
end
class Sequel::SQL::CaseExpression < Sequel::SQL::GenericExpression
  def conditions; end
  def default; end
  def expression; end
  def expression?; end
  def initialize(conditions, default, expression = nil); end
  def to_s_append(ds, sql); end
  def with_merged_expression; end
end
class Sequel::SQL::Cast < Sequel::SQL::GenericExpression
  def expr; end
  def initialize(expr, type); end
  def to_s_append(ds, sql); end
  def type; end
end
class Sequel::SQL::ColumnAll < Sequel::SQL::Expression
  def initialize(table); end
  def table; end
  def to_s_append(ds, sql); end
end
class Sequel::SQL::Constant < Sequel::SQL::GenericExpression
  def constant; end
  def initialize(constant); end
  def to_s_append(ds, sql); end
end
class Sequel::SQL::BooleanConstant < Sequel::SQL::Constant
  def to_s_append(ds, sql); end
end
class Sequel::SQL::NegativeBooleanConstant < Sequel::SQL::Constant
  def to_s_append(ds, sql); end
end
module Sequel::SQL::Constants
end
class Sequel::SQL::DelayedEvaluation < Sequel::SQL::GenericExpression
  def call(ds); end
  def callable; end
  def initialize(callable); end
  def to_s_append(ds, sql); end
end
class Sequel::SQL::Function < Sequel::SQL::GenericExpression
  def *(ce = nil); end
  def _initialize(name, args, opts); end
  def args; end
  def distinct; end
  def filter(*args, &block); end
  def initialize(name, *args); end
  def lateral; end
  def name; end
  def opts; end
  def order(*args); end
  def over(window = nil); end
  def quoted; end
  def self.new!(name, args, opts); end
  def to_s_append(ds, sql); end
  def unquoted; end
  def with_opts(opts); end
  def with_ordinality; end
  def within_group(*expressions); end
end
class Sequel::SQL::Identifier < Sequel::SQL::GenericExpression
  def function(*args); end
  def initialize(value); end
  def to_s_append(ds, sql); end
  def value; end
  include Sequel::SQL::QualifyingMethods
end
class Sequel::SQL::JoinClause < Sequel::SQL::Expression
  def column_aliases; end
  def initialize(join_type, table_expr); end
  def join_type; end
  def table; end
  def table_alias; end
  def table_expr; end
  def to_s_append(ds, sql); end
end
class Sequel::SQL::JoinOnClause < Sequel::SQL::JoinClause
  def initialize(on, *args); end
  def on; end
  def to_s_append(ds, sql); end
end
class Sequel::SQL::JoinUsingClause < Sequel::SQL::JoinClause
  def initialize(cols, *args); end
  def to_s_append(ds, sql); end
  def using; end
end
class Sequel::SQL::PlaceholderLiteralString < Sequel::SQL::GenericExpression
  def args; end
  def initialize(str, args, parens = nil); end
  def parens; end
  def str; end
  def to_s_append(ds, sql); end
  def with_parens; end
end
class Sequel::SQL::NumericExpression < Sequel::SQL::ComplexExpression
  def +(ce); end
  def sql_number; end
  include Sequel::SQL::BitwiseMethods
  include Sequel::SQL::InequalityMethods
  include Sequel::SQL::NumericMethods
end
class Sequel::SQL::OrderedExpression < Sequel::SQL::Expression
  def asc; end
  def desc; end
  def descending; end
  def expression; end
  def initialize(expression, descending = nil, opts = nil); end
  def invert; end
  def nulls; end
  def to_s_append(ds, sql); end
end
class Sequel::SQL::QualifiedIdentifier < Sequel::SQL::GenericExpression
  def column; end
  def convert_identifier(identifier); end
  def function(*args); end
  def initialize(table, column); end
  def table; end
  def to_s_append(ds, sql); end
  include Sequel::SQL::QualifyingMethods
end
class Sequel::SQL::StringExpression < Sequel::SQL::ComplexExpression
  def self.like(l, *ces); end
  def self.like_element(re); end
  def sql_string; end
  include Sequel::SQL::InequalityMethods
  include Sequel::SQL::StringConcatenationMethods
  include Sequel::SQL::StringMethods
end
class Sequel::SQL::Subscript < Sequel::SQL::GenericExpression
  def [](sub); end
  def expression; end
  def f; end
  def initialize(expression, sub); end
  def sub; end
  def to_s_append(ds, sql); end
  def |(sub); end
end
class Sequel::SQL::ValueList < Array
  def inspect; end
end
class Sequel::SQL::VirtualRow < Sequel::BasicObject
  def <(*args); end
  def <=(*args); end
  def >(*args); end
  def >=(*args); end
  def initialize; end
  include Anonymous_Module_4
  include Sequel::SQL::OperatorBuilders
end
module Anonymous_Module_4
  def method_missing(m, *args); end
end
class Sequel::SQL::Window < Sequel::SQL::Expression
  def initialize(opts = nil); end
  def opts; end
  def to_s_append(ds, sql); end
end
class Sequel::SQL::Wrapper < Sequel::SQL::GenericExpression
  def initialize(value); end
  def to_s_append(ds, sql); end
  def value; end
end
class Sequel::ConnectionPool
  def after_connect; end
  def after_connect=(arg0); end
  def connect_sqls; end
  def connect_sqls=(arg0); end
  def db; end
  def db=(arg0); end
  def disconnect_connection(conn); end
  def disconnect_error?(exception); end
  def initialize(db, opts = nil); end
  def make_new(server); end
  def servers; end
  extend Sequel::ConnectionPool::ClassMethods
end
module Sequel::ConnectionPool::ClassMethods
  def connection_pool_class(opts); end
  def get_pool(db, opts = nil); end
end
class Sequel::Error < StandardError
  def cause; end
  def wrapped_exception; end
  def wrapped_exception=(arg0); end
end
class Sequel::AdapterNotFound < Sequel::Error
end
class Sequel::DatabaseError < Sequel::Error
end
class Sequel::DatabaseConnectionError < Sequel::DatabaseError
end
class Sequel::DatabaseDisconnectError < Sequel::DatabaseError
end
class Sequel::ConstraintViolation < Sequel::DatabaseError
end
class Sequel::CheckConstraintViolation < Sequel::ConstraintViolation
end
class Sequel::ForeignKeyConstraintViolation < Sequel::ConstraintViolation
end
class Sequel::NotNullConstraintViolation < Sequel::ConstraintViolation
end
class Sequel::UniqueConstraintViolation < Sequel::ConstraintViolation
end
class Sequel::SerializationFailure < Sequel::DatabaseError
end
class Sequel::DatabaseLockTimeout < Sequel::DatabaseError
end
class Sequel::InvalidOperation < Sequel::Error
end
class Sequel::InvalidValue < Sequel::Error
end
class Sequel::NoMatchingRow < Sequel::Error
  def dataset; end
  def dataset=(arg0); end
  def initialize(msg = nil); end
end
class Sequel::PoolTimeout < Sequel::Error
end
class Sequel::Rollback < Sequel::Error
end
class Sequel::Dataset
  def <<(arg); end
  def ==(o); end
  def [](*conditions); end
  def _aggregate(function, arg); end
  def _all(block); end
  def _clone(*arg0); end
  def _columns; end
  def _extension!(exts); end
  def _hash_key_symbol(s, recursing = nil); end
  def _import(columns, values, opts); end
  def _insert_sql; end
  def _select_hash(meth, key_column, value_column, opts = nil); end
  def _select_map(column, order, &block); end
  def _select_map_multiple(ret_cols); end
  def _select_map_single; end
  def _single_record_ds; end
  def _truncate_sql(table); end
  def _unqualified_column_for(v); end
  def _update_sql; end
  def _where_loader(where_args, where_block); end
  def _with_sql_dataset; end
  def add_filter(clause, cond, invert = nil, combine = nil, &block); end
  def add_graph_aliases(graph_aliases); end
  def aggregate_dataset; end
  def alias_alias_symbol(s); end
  def alias_symbol(sym); end
  def aliased_expression_sql_append(sql, ae); end
  def all(&block); end
  def allow_preparing_prepared_statements?; end
  def array_sql_append(sql, a); end
  def as_hash(key_column, value_column = nil, opts = nil); end
  def as_sql_append(sql, aliaz, column_aliases = nil); end
  def auto_alias_expression(v); end
  def avg(arg = nil, &block); end
  def bind(bind_vars = nil); end
  def boolean_constant_sql_append(sql, constant); end
  def bound_variable_modules; end
  def cache; end
  def cache_get(k); end
  def cache_set(k, v); end
  def cache_sql?; end
  def cached_dataset(key); end
  def cached_placeholder_literalizer(key); end
  def cached_where_placeholder_literalizer(where_args, where_block, key, &block); end
  def call(type, bind_variables = nil, *values, &block); end
  def case_expression_sql_append(sql, ce); end
  def cast_sql_append(sql, expr, type); end
  def check_modification_allowed!; end
  def check_not_limited!(type); end
  def check_truncation_allowed!; end
  def clear_columns_cache; end
  def clone(opts = nil); end
  def column_all_sql_append(sql, ca); end
  def column_list_append(sql, columns); end
  def columns!; end
  def columns; end
  def columns=(v); end
  def complex_expression_arg_pairs(args); end
  def complex_expression_arg_pairs_append(sql, args, &block); end
  def complex_expression_emulate_append(sql, op, args); end
  def complex_expression_sql_append(sql, op, args); end
  def compound_clone(type, dataset, opts); end
  def compound_dataset_sql_append(sql, ds); end
  def compound_from_self; end
  def constant_sql_append(sql, constant); end
  def count(arg = nil, &block); end
  def cross_join(table, opts = nil); end
  def current_datetime; end
  def dataset_alias(number); end
  def db; end
  def default_import_slice; end
  def default_join_table_qualification; end
  def default_server; end
  def default_server_opts(opts); end
  def default_timestamp_format; end
  def delayed_evaluation_sql_append(sql, delay); end
  def delete(&block); end
  def delete_delete_sql(sql); end
  def delete_from_sql(sql); end
  def delete_order_sql(sql); end
  def delete_returning_sql(sql); end
  def delete_sql; end
  def delete_where_sql(sql); end
  def delete_with_sql(sql); end
  def disable_sql_caching!; end
  def distinct(*args, &block); end
  def dup; end
  def each; end
  def each_server; end
  def empty?; end
  def empty_array_value(op, cols); end
  def empty_from_sql; end
  def emulate_function?(name); end
  def emulate_prepared_statements?; end
  def eql?(o); end
  def escape_like(string); end
  def except(dataset, opts = nil); end
  def exclude(*cond, &block); end
  def exclude_having(*cond, &block); end
  def execute(sql, opts = nil, &block); end
  def execute_ddl(sql, opts = nil, &block); end
  def execute_dui(sql, opts = nil, &block); end
  def execute_insert(sql, opts = nil, &block); end
  def exists; end
  def expression_list_append(sql, columns); end
  def extension(*a); end
  def filter(*cond, &block); end
  def filter_expr(expr = nil, &block); end
  def first!(*args, &block); end
  def first(*args, &block); end
  def first_source; end
  def first_source_alias; end
  def first_source_table; end
  def for_update; end
  def format_timestamp(v); end
  def format_timestamp_offset(hour, minute); end
  def format_timestamp_usec(usec, ts = nil); end
  def freeze; end
  def from(*source, &block); end
  def from_self(opts = nil); end
  def full_join(*args, &block); end
  def full_outer_join(*args, &block); end
  def function_sql_append(sql, f); end
  def get(column = nil, &block); end
  def graph(dataset, join_conditions = nil, options = nil, &block); end
  def graph_alias_columns(graph_aliases); end
  def grep(columns, patterns, opts = nil); end
  def group(*columns, &block); end
  def group_and_count(*columns, &block); end
  def group_append(*columns, &block); end
  def group_by(*columns, &block); end
  def group_cube; end
  def group_rollup; end
  def grouping_element_list_append(sql, columns); end
  def grouping_sets; end
  def hash; end
  def hash_key_symbol(s); end
  def hash_key_symbols(s); end
  def having(*cond, &block); end
  def hoist_cte(ds); end
  def hoist_cte?(ds); end
  def identifier_append(sql, v); end
  def identifier_list_append(sql, args); end
  def ignore_values_preceding(row); end
  def import(columns, values, opts = nil); end
  def initialize(db); end
  def initialize_clone(c); end
  def initialize_copy(c); end
  def inner_join(*args, &block); end
  def input_identifier(v); end
  def insert(*values, &block); end
  def insert_columns_sql(sql); end
  def insert_empty_columns_values; end
  def insert_insert_sql(sql); end
  def insert_into_sql(sql); end
  def insert_returning_sql(sql); end
  def insert_sql(*values); end
  def insert_supports_empty_values?; end
  def insert_values_sql(sql); end
  def insert_with_sql(sql); end
  def inspect; end
  def intersect(dataset, opts = nil); end
  def invert; end
  def invert_order(order); end
  def join(*args, &block); end
  def join_clause_sql_append(sql, jc); end
  def join_on_clause_sql_append(sql, jc); end
  def join_table(type, table, expr = nil, options = nil, &block); end
  def join_type_sql(join_type); end
  def join_using_clause_sql_append(sql, jc); end
  def joined_dataset?; end
  def last(*args, &block); end
  def lateral; end
  def left_join(*args, &block); end
  def left_outer_join(*args, &block); end
  def limit(l, o = nil); end
  def literal(*args, &block); end
  def literal_append(sql, v); end
  def literal_array_append(sql, v); end
  def literal_big_decimal(v); end
  def literal_blob_append(sql, v); end
  def literal_dataset_append(sql, v); end
  def literal_date(v); end
  def literal_datetime(v); end
  def literal_datetime_append(sql, v); end
  def literal_expression_append(sql, v); end
  def literal_false; end
  def literal_float(v); end
  def literal_hash_append(sql, v); end
  def literal_integer(v); end
  def literal_nil; end
  def literal_other_append(sql, v); end
  def literal_sqltime(v); end
  def literal_sqltime_append(sql, v); end
  def literal_string_append(sql, v); end
  def literal_symbol_append(sql, v); end
  def literal_time(v); end
  def literal_time_append(sql, v); end
  def literal_true; end
  def lock_style(style); end
  def map(column = nil, &block); end
  def max(arg = nil, &block); end
  def min(arg = nil, &block); end
  def multi_insert(hashes, opts = nil); end
  def multi_insert_sql(columns, values); end
  def multi_insert_sql_strategy; end
  def naked; end
  def native_function_name(emulated_function); end
  def natural_full_join(table, opts = nil); end
  def natural_join(table, opts = nil); end
  def natural_left_join(table, opts = nil); end
  def natural_right_join(table, opts = nil); end
  def negative_boolean_constant_sql_append(sql, constant); end
  def non_sql_option?(key); end
  def nowait; end
  def offset(o); end
  def options_overlap(opts); end
  def opts; end
  def or(*cond, &block); end
  def order(*columns, &block); end
  def order_append(*columns, &block); end
  def order_by(*columns, &block); end
  def order_more(*columns, &block); end
  def order_prepend(*columns, &block); end
  def ordered_expression_sql_append(sql, oe); end
  def output_identifier(v); end
  def paged_each(opts = nil); end
  def placeholder_literal_string_sql_append(sql, pls); end
  def post_load(all_records); end
  def prepare(type, name, *values); end
  def prepared_arg_placeholder; end
  def prepared_statement_modules; end
  def provides_accurate_rows_matched?; end
  def qualified_column_name(column, table); end
  def qualified_expression(e, table); end
  def qualified_identifier_sql_append(sql, table, column = nil); end
  def qualifier_from_alias_symbol(aliaz, identifier); end
  def qualify(table = nil); end
  def quote_identifier(*args, &block); end
  def quote_identifier_append(sql, name); end
  def quote_identifiers?; end
  def quote_schema_table(*args, &block); end
  def quote_schema_table_append(sql, table); end
  def quoted_identifier_append(sql, name); end
  def recursive_cte_requires_column_aliases?; end
  def requires_emulating_nulls_first?; end
  def requires_like_escape?; end
  def requires_placeholder_type_specifiers?; end
  def requires_sql_standard_datetimes?; end
  def returning(*values); end
  def returning_fetch_rows(sql, &block); end
  def reverse(*order, &block); end
  def reverse_order(*order, &block); end
  def right_join(*args, &block); end
  def right_outer_join(*args, &block); end
  def row_number_column; end
  def row_proc; end
  def schema_and_table(table_name, sch = nil); end
  def select(*columns, &block); end
  def select_all(*tables); end
  def select_append(*columns, &block); end
  def select_columns_sql(sql); end
  def select_compounds_sql(sql); end
  def select_distinct_sql(sql); end
  def select_from_sql(sql); end
  def select_group(*columns, &block); end
  def select_group_sql(sql); end
  def select_hash(key_column, value_column, opts = nil); end
  def select_hash_groups(key_column, value_column, opts = nil); end
  def select_having_sql(sql); end
  def select_join_sql(sql); end
  def select_limit_sql(sql); end
  def select_lock_sql(sql); end
  def select_map(column = nil, &block); end
  def select_more(*columns, &block); end
  def select_only_offset_sql(sql); end
  def select_order_map(column = nil, &block); end
  def select_order_sql(sql); end
  def select_select_sql(sql); end
  def select_sql; end
  def select_where_sql(sql); end
  def select_window_sql(sql); end
  def select_with_sql(sql); end
  def select_with_sql_base; end
  def self.clause_methods(type, clauses); end
  def self.def_sql_method(mod, type, clauses); end
  def self.prepared_statements_module(code, mods, meths = nil, &block); end
  def self.register_extension(ext, mod = nil, &block); end
  def server(servr); end
  def server?(server); end
  def set_graph_aliases(graph_aliases); end
  def simple_select_all?; end
  def single_record!; end
  def single_record; end
  def single_value!; end
  def single_value; end
  def single_value_ds; end
  def skip_limit_check; end
  def skip_locked; end
  def skip_symbol_cache?; end
  def source_list_append(sql, sources); end
  def split_alias(c); end
  def split_qualifiers(table_name, *args); end
  def split_symbol(sym); end
  def sql; end
  def sql_string_origin; end
  def sqltime_precision; end
  def static_sql(sql); end
  def subscript_sql_append(sql, s); end
  def subselect_sql_append(sql, ds); end
  def subselect_sql_dataset(sql, ds); end
  def sum(arg = nil, &block); end
  def supports_cte?(type = nil); end
  def supports_cte_in_compounds?; end
  def supports_cte_in_subqueries?; end
  def supports_derived_column_lists?; end
  def supports_distinct_on?; end
  def supports_group_cube?; end
  def supports_group_rollup?; end
  def supports_grouping_sets?; end
  def supports_insert_select?; end
  def supports_intersect_except?; end
  def supports_intersect_except_all?; end
  def supports_is_true?; end
  def supports_join_using?; end
  def supports_lateral_subqueries?; end
  def supports_limits_in_correlated_subqueries?; end
  def supports_modifying_joins?; end
  def supports_multiple_column_in?; end
  def supports_nowait?; end
  def supports_offsets_in_correlated_subqueries?; end
  def supports_ordered_distinct_on?; end
  def supports_quoted_function_names?; end
  def supports_regexp?; end
  def supports_replace?; end
  def supports_returning?(type); end
  def supports_select_all_and_column?; end
  def supports_skip_locked?; end
  def supports_timestamp_timezones?; end
  def supports_timestamp_usecs?; end
  def supports_where_true?; end
  def supports_window_clause?; end
  def supports_window_function_frame_option?(option); end
  def supports_window_functions?; end
  def timestamp_precision; end
  def to_hash(*a); end
  def to_hash_groups(key_column, value_column = nil, opts = nil); end
  def to_prepared_statement(type, values = nil, opts = nil); end
  def truncate; end
  def truncate_sql; end
  def unaliased_identifier(c); end
  def unfiltered; end
  def ungraphed; end
  def ungrouped; end
  def union(dataset, opts = nil); end
  def unlimited; end
  def unordered; end
  def unqualified_column_for(v); end
  def unused_table_alias(table_alias, used_aliases = nil); end
  def update(values = nil, &block); end
  def update_order_sql(sql); end
  def update_returning_sql(sql); end
  def update_set_sql(sql); end
  def update_sql(values = nil); end
  def update_sql_values_hash(sql, values); end
  def update_table_sql(sql); end
  def update_update_sql(sql); end
  def update_where_sql(sql); end
  def update_with_sql(sql); end
  def uses_returning?(type); end
  def uses_with_rollup?; end
  def virtual_row_columns(columns, block); end
  def visible_class_name; end
  def where(*cond, &block); end
  def where_all(cond, &block); end
  def where_each(cond, &block); end
  def where_single_value(cond); end
  def window(name, opts); end
  def window_frame_boundary_sql_append(sql, boundary, direction); end
  def window_sql_append(sql, opts); end
  def with(name, dataset, opts = nil); end
  def with_extend(*mods, &block); end
  def with_quote_identifiers(v); end
  def with_recursive(name, nonrecursive, recursive, opts = nil); end
  def with_row_proc(callable); end
  def with_sql(sql, *args); end
  def with_sql_all(sql, &block); end
  def with_sql_delete(sql); end
  def with_sql_each(sql); end
  def with_sql_first(sql); end
  def with_sql_insert(sql); end
  def with_sql_single_value(sql); end
  def with_sql_update(sql); end
  include Enumerable
  include Sequel::SQL::AliasMethods
  include Sequel::SQL::BooleanMethods
  include Sequel::SQL::CastMethods
  include Sequel::SQL::ComplexExpressionMethods
  include Sequel::SQL::InequalityMethods
  include Sequel::SQL::NumericMethods
  include Sequel::SQL::OrderMethods
  include Sequel::SQL::StringMethods
end
module Sequel::Dataset::ArgumentMapper
  def bind_arguments; end
  def call(bind_vars = nil, &block); end
  def emulate_prepared_statements?; end
  def prepared_sql; end
  def prepared_statement_name; end
end
module Sequel::Dataset::PreparedStatementMethods
  def call(bind_vars = nil, &block); end
  def columns; end
  def delayed_evaluation_sql_append(sql, delay); end
  def inspect; end
  def literal_symbol_append(sql, v); end
  def log_sql; end
  def orig_dataset; end
  def prepare(*arg0); end
  def prepared_arg(k); end
  def prepared_args; end
  def prepared_modify_values; end
  def prepared_sql; end
  def prepared_type; end
  def run(&block); end
  def skip_symbol_cache?; end
  def subselect_sql_append(sql, ds); end
  def subselect_sql_dataset(sql, ds); end
end
module Sequel::Dataset::UnnumberedArgumentMapper
  def map_to_prepared_args(bind_vars); end
  def prepared_arg(k); end
  include Sequel::Dataset::ArgumentMapper
end
module Sequel::Dataset::EmulatePreparedStatementMethods
  def emulate_prepared_statements?; end
  def emulated_prepared_statement(type, name, values); end
  def prepared_arg(k); end
  def run(&block); end
  def subselect_sql_dataset(sql, ds); end
  include Sequel::Dataset::UnnumberedArgumentMapper
end
class Sequel::Dataset::PlaceholderLiteralizer
  def all(*args, &block); end
  def each(*args, &block); end
  def first(*args); end
  def freeze; end
  def get(*args); end
  def initialize(dataset, fragments, final_sql, arity); end
  def self.loader(dataset, &block); end
  def sql(*args); end
  def with_dataset; end
end
class Sequel::Dataset::PlaceholderLiteralizer::Argument
  def initialize(recorder, pos, transformer = nil); end
  def sql_literal_append(ds, sql); end
  def transform(&block); end
end
class Sequel::Dataset::PlaceholderLiteralizer::Recorder
  def arg(v = nil); end
  def loader(dataset, &block); end
  def prepared_sql_and_frags(dataset, prepared_args, &block); end
  def process(dataset); end
  def use(sql, arg, transformer); end
end
class Sequel::Dataset::DatasetModule < Module
  def distinct(name, *args, &block); end
  def exclude(name, *args, &block); end
  def exclude_having(name, *args, &block); end
  def grep(name, *args, &block); end
  def group(name, *args, &block); end
  def group_and_count(name, *args, &block); end
  def group_append(name, *args, &block); end
  def having(name, *args, &block); end
  def limit(name, *args, &block); end
  def offset(name, *args, &block); end
  def order(name, *args, &block); end
  def order_append(name, *args, &block); end
  def order_prepend(name, *args, &block); end
  def reverse(name, *args, &block); end
  def select(name, *args, &block); end
  def select_all(name, *args, &block); end
  def select_append(name, *args, &block); end
  def select_group(name, *args, &block); end
  def self.def_dataset_caching_method(mod, meth); end
  def server(name, *args, &block); end
  def where(name, *args, &block); end
end
class Sequel::Database
  def <<(sql); end
  def [](*args); end
  def _metadata_dataset; end
  def _table_exists?(ds); end
  def _trans(conn); end
  def _transaction(conn, opts = nil); end
  def _typecast_value_string_to_decimal(*arg0); end
  def adapter_initialize; end
  def adapter_scheme; end
  def add_column(table, *args); end
  def add_index(table, columns, options = nil); end
  def add_savepoint_hook(conn, type, block); end
  def add_servers(servers); end
  def add_transaction(conn, opts); end
  def add_transaction_hook(conn, type, block); end
  def after_commit(opts = nil, &block); end
  def after_rollback(opts = nil, &block); end
  def already_in_transaction?(conn, opts); end
  def alter_table(name, &block); end
  def alter_table_add_column_sql(table, op); end
  def alter_table_add_constraint_sql(table, op); end
  def alter_table_drop_column_sql(table, op); end
  def alter_table_drop_constraint_sql(table, op); end
  def alter_table_generator(&block); end
  def alter_table_generator_class; end
  def alter_table_op_sql(table, op); end
  def alter_table_rename_column_sql(table, op); end
  def alter_table_set_column_default_sql(table, op); end
  def alter_table_set_column_null_sql(table, op); end
  def alter_table_set_column_type_sql(table, op); end
  def alter_table_sql(table, op); end
  def alter_table_sql_list(table, operations); end
  def apply_alter_table(name, ops); end
  def apply_alter_table_generator(name, generator); end
  def auto_increment_sql; end
  def begin_new_transaction(conn, opts); end
  def begin_savepoint(conn, opts); end
  def begin_savepoint_sql(depth); end
  def begin_transaction(conn, opts = nil); end
  def begin_transaction_sql; end
  def blank_object?(obj); end
  def cache_schema; end
  def cache_schema=(arg0); end
  def call(ps_name, hash = nil, &block); end
  def can_add_primary_key_constraint_on_nullable_columns?; end
  def cast_type_literal(type); end
  def column_definition_auto_increment_sql(sql, column); end
  def column_definition_collate_sql(sql, column); end
  def column_definition_default_sql(sql, column); end
  def column_definition_null_sql(sql, column); end
  def column_definition_order; end
  def column_definition_primary_key_sql(sql, column); end
  def column_definition_references_sql(sql, column); end
  def column_definition_sql(column); end
  def column_definition_unique_sql(sql, column); end
  def column_list_sql(generator); end
  def column_references_column_constraint_sql(column); end
  def column_references_sql(column); end
  def column_references_table_constraint_sql(constraint); end
  def column_schema_default_string_type?(type); end
  def column_schema_default_to_ruby_value(default, type); end
  def column_schema_max_length(db_type); end
  def column_schema_normalize_default(default, type); end
  def column_schema_to_ruby_default(default, type); end
  def combinable_alter_table_op?(op); end
  def commit_or_rollback_transaction(exception, conn, opts); end
  def commit_savepoint_sql(depth); end
  def commit_transaction(conn, opts = nil); end
  def commit_transaction_sql; end
  def connection_execute_method; end
  def connection_info(conn); end
  def connection_pool_default_options; end
  def constraint_deferrable_sql_append(sql, defer); end
  def constraint_definition_sql(constraint); end
  def create_join_table!(hash, options = nil); end
  def create_join_table(hash, options = nil); end
  def create_join_table?(hash, options = nil); end
  def create_or_replace_view(name, source, options = nil); end
  def create_table!(name, options = nil, &block); end
  def create_table(name, options = nil, &block); end
  def create_table?(name, options = nil, &block); end
  def create_table_as(name, sql, options); end
  def create_table_as_sql(name, sql, options); end
  def create_table_from_generator(name, generator, options); end
  def create_table_generator(&block); end
  def create_table_generator_class; end
  def create_table_indexes_from_generator(name, generator, options); end
  def create_table_prefix_sql(name, options); end
  def create_table_sql(name, generator, options); end
  def create_view(name, source, options = nil); end
  def create_view_prefix_sql(name, options); end
  def create_view_sql(name, source, options); end
  def create_view_sql_append_columns(sql, columns); end
  def database_error_class(exception, opts); end
  def database_error_classes; end
  def database_error_regexps; end
  def database_exception_sqlstate(exception, opts); end
  def database_specific_error_class(exception, opts); end
  def database_specific_error_class_from_sqlstate(sqlstate); end
  def database_type; end
  def dataset; end
  def dataset_class; end
  def dataset_class=(c); end
  def dataset_class_default; end
  def default_index_name(table_name, columns); end
  def default_string_column_size; end
  def default_string_column_size=(arg0); end
  def disconnect(opts = nil); end
  def disconnect_connection(conn); end
  def disconnect_error?(exception, opts); end
  def drop_column(table, *args); end
  def drop_index(table, columns, options = nil); end
  def drop_index_sql(table, op); end
  def drop_join_table(hash, options = nil); end
  def drop_table(*names); end
  def drop_table?(*names); end
  def drop_table_sql(name, options); end
  def drop_view(*names); end
  def drop_view_sql(name, options); end
  def execute_ddl(sql, opts = nil, &block); end
  def execute_dui(sql, opts = nil, &block); end
  def execute_insert(sql, opts = nil, &block); end
  def extend_datasets(mod = nil, &block); end
  def extension(*exts); end
  def fetch(sql, *args, &block); end
  def filter_expr(*args, &block); end
  def folds_unquoted_identifiers_to_uppercase?; end
  def foreign_key_name(table_name, columns); end
  def freeze; end
  def from(*args, &block); end
  def from_application_timestamp(v); end
  def get(*args, &block); end
  def global_index_namespace?; end
  def in_savepoint?(conn); end
  def in_transaction?(opts = nil); end
  def index_definition_sql(table_name, index); end
  def index_sql_list(table_name, indexes); end
  def initialize(opts = nil); end
  def initialize_load_extensions(key); end
  def input_identifier_meth(ds = nil); end
  def inspect; end
  def join_table_name(hash, options); end
  def join_table_name_extract(entry); end
  def literal(v); end
  def literal_symbol(sym); end
  def literal_symbol_set(sym, lit); end
  def log_connection_execute(conn, sql); end
  def log_connection_info; end
  def log_connection_info=(arg0); end
  def log_connection_yield(sql, conn, args = nil); end
  def log_duration(duration, message); end
  def log_each(level, message); end
  def log_exception(exception, message); end
  def log_info(message, args = nil); end
  def log_warn_duration; end
  def log_warn_duration=(arg0); end
  def logger=(logger); end
  def loggers; end
  def loggers=(arg0); end
  def metadata_dataset; end
  def on_delete_clause(action); end
  def on_update_clause(action); end
  def opts; end
  def output_identifier_meth(ds = nil); end
  def pool; end
  def prepared_statement(name); end
  def prepared_statements; end
  def quote_identifier(v); end
  def quote_identifiers_default; end
  def quote_schema_table(table); end
  def raise_error(exception, opts = nil); end
  def remove_cached_schema(table); end
  def remove_servers(*servers); end
  def remove_transaction(conn, committed); end
  def rename_column(table, *args); end
  def rename_table(name, new_name); end
  def rename_table_sql(name, new_name); end
  def reset_default_dataset; end
  def rollback_checker(opts = nil); end
  def rollback_on_exit(opts = nil); end
  def rollback_on_transaction_exit?(conn, opts); end
  def rollback_savepoint_sql(depth); end
  def rollback_transaction(conn, opts = nil); end
  def rollback_transaction_sql; end
  def run(sql, opts = nil); end
  def savepoint_hooks(conn, committed); end
  def savepoint_level(conn); end
  def schema(table, opts = nil); end
  def schema_and_table(table_name); end
  def schema_autoincrementing_primary_key?(schema); end
  def schema_column_type(db_type); end
  def schema_post_process(cols); end
  def schema_type_class(type); end
  def schema_utility_dataset; end
  def select(*args, &block); end
  def self.adapter_class(scheme); end
  def self.adapter_scheme; end
  def self.after_initialize(&block); end
  def self.connect(conn_string, opts = nil); end
  def self.extension(*extensions); end
  def self.load_adapter(scheme, opts = nil); end
  def self.register_extension(ext, mod = nil, &block); end
  def self.run_after_initialize(instance); end
  def self.set_adapter_scheme(scheme); end
  def self.set_shared_adapter_scheme(scheme, mod); end
  def self.uri_to_options(uri); end
  def serial_primary_key_options; end
  def server_opts(server); end
  def servers; end
  def set_column_default(table, *args); end
  def set_column_type(table, *args); end
  def set_prepared_statement(name, ps); end
  def set_transaction_isolation(conn, opts); end
  def set_transaction_isolation_sql(level); end
  def sharded?; end
  def single_threaded?; end
  def split_qualifiers(table_name); end
  def sql_log_level; end
  def sql_log_level=(arg0); end
  def supports_combining_alter_table_ops?; end
  def supports_create_or_replace_view?; end
  def supports_create_table_if_not_exists?; end
  def supports_deferrable_constraints?; end
  def supports_deferrable_foreign_key_constraints?; end
  def supports_drop_table_if_exists?; end
  def supports_foreign_key_parsing?; end
  def supports_index_parsing?; end
  def supports_named_column_constraints?; end
  def supports_partial_indexes?; end
  def supports_prepared_transactions?; end
  def supports_savepoints?; end
  def supports_savepoints_in_prepared_transactions?; end
  def supports_schema_parsing?; end
  def supports_table_listing?; end
  def supports_transaction_isolation_levels?; end
  def supports_transactional_ddl?; end
  def supports_view_listing?; end
  def supports_views_with_check_option?; end
  def supports_views_with_local_check_option?; end
  def synchronize(server = nil, &block); end
  def table_exists?(name); end
  def temporary_table_sql; end
  def test_connection(server = nil); end
  def timezone; end
  def timezone=(arg0); end
  def to_application_timestamp(v); end
  def transaction(opts = nil, &block); end
  def transaction_error(e, opts = nil); end
  def transaction_finished?(conn); end
  def transaction_hooks(conn, committed); end
  def transaction_isolation_level; end
  def transaction_isolation_level=(arg0); end
  def transaction_options(conn, opts); end
  def type_literal(column); end
  def type_literal_generic(column); end
  def type_literal_generic_bigdecimal(column); end
  def type_literal_generic_bignum_symbol(column); end
  def type_literal_generic_date(column); end
  def type_literal_generic_datetime(column); end
  def type_literal_generic_falseclass(column); end
  def type_literal_generic_file(column); end
  def type_literal_generic_fixnum(column); end
  def type_literal_generic_float(column); end
  def type_literal_generic_integer(column); end
  def type_literal_generic_numeric(column); end
  def type_literal_generic_only_time(column); end
  def type_literal_generic_string(column); end
  def type_literal_generic_time(column); end
  def type_literal_generic_trueclass(column); end
  def type_literal_specific(column); end
  def typecast_value(column_type, value); end
  def typecast_value_blob(value); end
  def typecast_value_boolean(value); end
  def typecast_value_date(value); end
  def typecast_value_datetime(value); end
  def typecast_value_decimal(value); end
  def typecast_value_float(*arg0); end
  def typecast_value_integer(value); end
  def typecast_value_string(value); end
  def typecast_value_time(value); end
  def uri; end
  def url; end
  def uses_clob_for_text?; end
  def valid_connection?(conn); end
  def valid_connection_sql; end
  def view_with_check_option_support; end
end
module Sequel::Schema
end
class Sequel::Schema::CreateTableGenerator
  def BigDecimal(name, opts = nil); end
  def Bignum(name, opts = nil); end
  def Date(name, opts = nil); end
  def DateTime(name, opts = nil); end
  def FalseClass(name, opts = nil); end
  def File(name, opts = nil); end
  def Fixnum(name, opts = nil); end
  def Float(name, opts = nil); end
  def Integer(name, opts = nil); end
  def Numeric(name, opts = nil); end
  def String(name, opts = nil); end
  def Time(name, opts = nil); end
  def TrueClass(name, opts = nil); end
  def check(*args, &block); end
  def column(name, type, opts = nil); end
  def columns; end
  def composite_foreign_key(columns, opts); end
  def composite_primary_key(columns, *args); end
  def constraint(name, *args, &block); end
  def constraints; end
  def foreign_key(name, table = nil, opts = nil); end
  def full_text_index(columns, opts = nil); end
  def has_column?(name); end
  def index(columns, opts = nil); end
  def indexes; end
  def initialize(db, &block); end
  def method_missing(type, name = nil, opts = nil); end
  def primary_key(name, *args); end
  def primary_key_name; end
  def respond_to_missing?(meth, include_private); end
  def self.add_type_method(*types); end
  def spatial_index(columns, opts = nil); end
  def unique(columns, opts = nil); end
end
class Sequel::Schema::AlterTableGenerator
  def add_column(name, type, opts = nil); end
  def add_composite_foreign_key(columns, table, opts); end
  def add_composite_primary_key(columns, opts); end
  def add_constraint(name, *args, &block); end
  def add_foreign_key(name, table, opts = nil); end
  def add_full_text_index(columns, opts = nil); end
  def add_index(columns, opts = nil); end
  def add_primary_key(name, opts = nil); end
  def add_spatial_index(columns, opts = nil); end
  def add_unique_constraint(columns, opts = nil); end
  def drop_column(name, opts = nil); end
  def drop_composite_foreign_key(columns, opts); end
  def drop_constraint(name, opts = nil); end
  def drop_foreign_key(name, opts = nil); end
  def drop_index(columns, options = nil); end
  def initialize(db, &block); end
  def operations; end
  def rename_column(name, new_name, opts = nil); end
  def set_column_allow_null(name, allow_null = nil); end
  def set_column_default(name, default); end
  def set_column_not_null(name); end
  def set_column_type(name, type, opts = nil); end
end
module Sequel::Timezones
  def application_timezone; end
  def application_timezone=(tz); end
  def application_to_database_timestamp(v); end
  def convert_input_datetime_no_offset(v, input_timezone); end
  def convert_input_datetime_other(v, input_timezone); end
  def convert_input_timestamp(v, input_timezone); end
  def convert_output_datetime_other(v, output_timezone); end
  def convert_output_timestamp(v, output_timezone); end
  def convert_timestamp(v, input_timezone); end
  def convert_timezone_setter_arg(tz); end
  def database_timezone; end
  def database_timezone=(tz); end
  def database_to_application_timestamp(v); end
  def default_timezone=(tz); end
  def local_offset_for_datetime(dt); end
  def time_offset_to_datetime_offset(offset_secs); end
  def typecast_timezone; end
  def typecast_timezone=(tz); end
  def typecast_to_application_timestamp(v); end
end
class Sequel::ASTTransformer
  def transform(obj); end
  def v(o); end
end
class Sequel::Qualifier < Sequel::ASTTransformer
  def initialize(table); end
  def v(o); end
end
module Sequel::Inflections
  def camelize(s); end
  def constantize(s); end
  def demodulize(s); end
  def pluralize(s); end
  def self.clear(scope = nil); end
  def self.irregular(singular, plural); end
  def self.plural(rule, replacement); end
  def self.plurals; end
  def self.singular(rule, replacement); end
  def self.singulars; end
  def self.uncountable(*words); end
  def self.uncountables; end
  def singularize(s); end
  def underscore(s); end
end
module Sequel::Plugins
  def self._define_sequel_method_arg_numbers(callable); end
  def self.after_set_dataset(mod, meth); end
  def self.def_dataset_methods(mod, meths); end
  def self.def_sequel_method(model, meth, expected_arity, &block); end
  def self.inherited_instance_variables(mod, hash); end
end
class Sequel::Model
  extend Enumerable
  extend Sequel::Inflections
  extend Sequel::Model::Associations::ClassMethods
  extend Sequel::Model::ClassMethods
  extend Sequel::Model::ClassMethods
  include Sequel::Model::Associations::InstanceMethods
  include Sequel::Model::InstanceMethods
end
class Sequel::Model::DatasetModule < Sequel::Dataset::DatasetModule
  def initialize(model); end
  def method_added(meth); end
  def subset(name, *args, &block); end
end
module Sequel::Model::ClassMethods
  def Model(source); end
  def [](*args); end
  def all(*args, &block); end
  def as_hash(*args, &block); end
  def avg(*args, &block); end
  def cache_anonymous_models; end
  def cache_anonymous_models=(arg0); end
  def call(values); end
  def check_non_connection_error(do_raise = nil); end
  def clear_setter_methods_cache; end
  def columns; end
  def convert_input_dataset(ds); end
  def count(*args, &block); end
  def create(values = nil, &block); end
  def cross_join(*args, &block); end
  def dataset; end
  def dataset=(ds); end
  def dataset_extend(mod, opts = nil); end
  def dataset_method_modules; end
  def dataset_module(mod = nil, &block); end
  def dataset_module_class; end
  def db; end
  def db=(db); end
  def db_schema; end
  def def_Model(mod); end
  def def_bad_column_accessor(column); end
  def def_column_accessor(*columns); end
  def def_column_alias(meth, column); end
  def def_model_dataset_method(meth); end
  def default_set_fields_options; end
  def default_set_fields_options=(arg0); end
  def distinct(*args, &block); end
  def each(*args, &block); end
  def each_server(*args, &block); end
  def empty?(*args, &block); end
  def except(*args, &block); end
  def exclude(*args, &block); end
  def exclude_having(*args, &block); end
  def fast_instance_delete_sql; end
  def fast_pk_lookup_sql; end
  def fetch(*args, &block); end
  def fetch_rows(*args, &block); end
  def filter(*args, &block); end
  def find(*args, &block); end
  def find_or_create(cond, &block); end
  def first!(*args, &block); end
  def first(*args, &block); end
  def for_update(*args, &block); end
  def freeze; end
  def from(*args, &block); end
  def from_self(*args, &block); end
  def full_join(*args, &block); end
  def full_outer_join(*args, &block); end
  def get(*args, &block); end
  def get_db_schema(reload = nil); end
  def get_setter_methods; end
  def graph(*args, &block); end
  def grep(*args, &block); end
  def group(*args, &block); end
  def group_and_count(*args, &block); end
  def group_append(*args, &block); end
  def group_by(*args, &block); end
  def has_dataset?; end
  def having(*args, &block); end
  def implicit_table_name; end
  def import(*args, &block); end
  def include(*mods); end
  def inherited(subclass); end
  def inherited_instance_variables; end
  def inner_join(*args, &block); end
  def insert(*args, &block); end
  def instance_dataset; end
  def intersect(*args, &block); end
  def invert(*args, &block); end
  def join(*args, &block); end
  def join_table(*args, &block); end
  def last(*args, &block); end
  def late_binding_class_option(opts, default); end
  def left_join(*args, &block); end
  def left_outer_join(*args, &block); end
  def limit(*args, &block); end
  def load(values); end
  def lock_style(*args, &block); end
  def map(*args, &block); end
  def max(*args, &block); end
  def method_added(meth); end
  def min(*args, &block); end
  def multi_insert(*args, &block); end
  def naked(*args, &block); end
  def natural_full_join(*args, &block); end
  def natural_join(*args, &block); end
  def natural_left_join(*args, &block); end
  def natural_right_join(*args, &block); end
  def no_primary_key; end
  def offset(*args, &block); end
  def order(*args, &block); end
  def order_append(*args, &block); end
  def order_by(*args, &block); end
  def order_more(*args, &block); end
  def order_prepend(*args, &block); end
  def overridable_methods_module; end
  def paged_each(*args, &block); end
  def plugin(plugin, *args, &block); end
  def plugin_module(plugin); end
  def plugins; end
  def primary_key; end
  def primary_key_hash(value); end
  def primary_key_lookup(pk); end
  def qualified_primary_key_hash(value, qualifier = nil); end
  def qualify(*args, &block); end
  def raise_on_save_failure; end
  def raise_on_save_failure=(arg0); end
  def raise_on_typecast_failure; end
  def raise_on_typecast_failure=(arg0); end
  def reload_db_schema?; end
  def require_modification; end
  def require_modification=(arg0); end
  def require_valid_table; end
  def require_valid_table=(arg0); end
  def reset_fast_pk_lookup_sql; end
  def reset_instance_dataset; end
  def restrict_primary_key; end
  def restrict_primary_key?; end
  def reverse(*args, &block); end
  def reverse_order(*args, &block); end
  def right_join(*args, &block); end
  def right_outer_join(*args, &block); end
  def select(*args, &block); end
  def select_all(*args, &block); end
  def select_append(*args, &block); end
  def select_group(*args, &block); end
  def select_hash(*args, &block); end
  def select_hash_groups(*args, &block); end
  def select_map(*args, &block); end
  def select_more(*args, &block); end
  def select_order_map(*args, &block); end
  def server(*args, &block); end
  def set_columns(new_columns); end
  def set_dataset(ds, opts = nil); end
  def set_dataset_row_proc(ds); end
  def set_primary_key(key); end
  def setter_methods; end
  def simple_pk; end
  def simple_pk=(pk); end
  def simple_table; end
  def simple_table=(t); end
  def single_record!(*args, &block); end
  def single_record(*args, &block); end
  def single_value!(*args, &block); end
  def single_value(*args, &block); end
  def strict_param_setting; end
  def strict_param_setting=(arg0); end
  def sum(*args, &block); end
  def table_name; end
  def to_hash(*args, &block); end
  def to_hash_groups(*args, &block); end
  def truncate(*args, &block); end
  def typecast_empty_string_to_nil; end
  def typecast_empty_string_to_nil=(arg0); end
  def typecast_on_assignment; end
  def typecast_on_assignment=(arg0); end
  def unfiltered(*args, &block); end
  def ungraphed(*args, &block); end
  def ungrouped(*args, &block); end
  def union(*args, &block); end
  def unlimited(*args, &block); end
  def unordered(*args, &block); end
  def unrestrict_primary_key; end
  def use_transactions; end
  def use_transactions=(arg0); end
  def where(*args, &block); end
  def where_all(*args, &block); end
  def where_each(*args, &block); end
  def where_single_value(*args, &block); end
  def with(*args, &block); end
  def with_pk!(pk); end
  def with_pk(pk); end
  def with_recursive(*args, &block); end
  def with_sql(*args, &block); end
end
module Sequel::Model::InstanceMethods
  def ==(obj); end
  def ===(obj); end
  def [](column); end
  def []=(column, value); end
  def _add_changed_column(column); end
  def _changed_columns; end
  def _delete; end
  def _delete_dataset; end
  def _delete_without_checking; end
  def _destroy(opts); end
  def _destroy_delete; end
  def _insert; end
  def _insert_dataset; end
  def _insert_raw(ds); end
  def _insert_select_raw(ds); end
  def _insert_values; end
  def _refresh(dataset); end
  def _refresh_get(dataset); end
  def _refresh_set_values(h); end
  def _save(opts); end
  def _save_refresh; end
  def _save_set_values(h); end
  def _save_update_all_columns_hash; end
  def _save_valid?(opts); end
  def _update(columns); end
  def _update_columns(columns); end
  def _update_dataset; end
  def _update_without_checking(columns); end
  def _use_insert_select?(ds); end
  def _valid?(opts); end
  def after_create; end
  def after_destroy; end
  def after_save; end
  def after_update; end
  def after_validation; end
  def around_create; end
  def around_destroy; end
  def around_save; end
  def around_update; end
  def around_validation; end
  def autoincrementing_primary_key; end
  def before_create; end
  def before_destroy; end
  def before_save; end
  def before_update; end
  def before_validation; end
  def cancel_action(msg = nil); end
  def change_column_value(column, value); end
  def changed_columns; end
  def checked_save_failure(opts); end
  def checked_transaction(opts = nil); end
  def columns; end
  def db; end
  def db_schema; end
  def delete; end
  def destroy(opts = nil); end
  def each(&block); end
  def eql?(obj); end
  def errors; end
  def errors_class; end
  def exists?; end
  def extend(mod); end
  def freeze; end
  def get_column_value(*arg0); end
  def hash; end
  def hook_failed_error(msg); end
  def id; end
  def initialize(values = nil); end
  def initialize_clone(other); end
  def initialize_copy(other); end
  def initialize_set(h); end
  def inspect; end
  def inspect_values; end
  def keys; end
  def lock!(style = nil); end
  def marshallable!; end
  def model; end
  def modified!(column = nil); end
  def modified?(column = nil); end
  def new?; end
  def pk; end
  def pk_equal?(obj); end
  def pk_hash; end
  def primary_key; end
  def qualified_pk_hash(qualifier = nil); end
  def raise_hook_failure(type = nil); end
  def raise_on_failure?(opts); end
  def raise_on_save_failure; end
  def raise_on_save_failure=(arg0); end
  def raise_on_typecast_failure; end
  def raise_on_typecast_failure=(arg0); end
  def refresh; end
  def reload; end
  def require_modification; end
  def require_modification=(arg0); end
  def save(opts = nil); end
  def save_changes(opts = nil); end
  def schema_type_class(column); end
  def set(hash); end
  def set_column_value(*arg0); end
  def set_fields(hash, fields, opts = nil); end
  def set_restricted(hash, type); end
  def set_server(s); end
  def setter_methods(type); end
  def singleton_method_added(meth); end
  def skip_validation_on_next_save!; end
  def strict_param_setting; end
  def strict_param_setting=(arg0); end
  def this; end
  def this_server; end
  def to_hash; end
  def typecast_empty_string_to_nil; end
  def typecast_empty_string_to_nil=(arg0); end
  def typecast_on_assignment; end
  def typecast_on_assignment=(arg0); end
  def typecast_value(column, value); end
  def update(hash); end
  def update_fields(hash, fields, opts = nil); end
  def update_restricted(hash, type); end
  def use_server(ds); end
  def use_transaction?(opts = nil); end
  def use_transactions; end
  def use_transactions=(arg0); end
  def valid?(opts = nil); end
  def validate; end
  def validation_failed_error; end
  def values; end
end
module Sequel::Model::DatasetMethods
  def [](*args); end
  def _primary_key_order; end
  def _with_pk_loader; end
  def as_hash(key_column = nil, value_column = nil, opts = nil); end
  def destroy; end
  def last(*a, &block); end
  def model; end
  def non_sql_option?(key); end
  def paged_each(*a, &block); end
  def to_hash(*a); end
  def with_pk!(pk); end
  def with_pk(pk); end
end
class Sequel::HookFailed < Sequel::Error
  def initialize(message = nil, model = nil); end
  def model; end
end
class Sequel::NoExistingObject < Sequel::Error
end
class Sequel::UndefinedAssociation < Sequel::Error
end
class Sequel::MassAssignmentRestriction < Sequel::Error
end
class Sequel::ValidationFailed < Sequel::Error
  def errors; end
  def initialize(errors = nil); end
  def model; end
end
class Sequel::Model::Errors < Hash
  def add(att, msg); end
  def count; end
  def empty?; end
  def full_messages; end
  def on(att); end
end
module Sequel::Model::Associations
  def self.apply(model); end
end
class Sequel::Model::Associations::DatasetModule < Sequel::Model::DatasetModule
  def eager(name, *args, &block); end
end
class Sequel::Model::Associations::AssociationReflection < Hash
  def _add_method; end
  def _associated_dataset; end
  def _remove_all_method; end
  def _remove_method; end
  def _setter_method; end
  def add_method; end
  def ambiguous_reciprocal_type?; end
  def apply_dataset_changes(ds); end
  def apply_distinct_on_eager_limit_strategy(ds); end
  def apply_eager_dataset_changes(ds); end
  def apply_eager_graph_limit_strategy(strategy, ds); end
  def apply_eager_limit_strategy(ds, strategy = nil, limit_and_offset = nil); end
  def apply_filter_by_associations_distinct_on_limit_strategy(ds); end
  def apply_filter_by_associations_limit_strategy(ds); end
  def apply_filter_by_associations_window_function_limit_strategy(ds); end
  def apply_ruby_eager_limit_strategy(rows, limit_and_offset = nil); end
  def apply_window_function_eager_limit_strategy(ds, limit_and_offset = nil); end
  def assign_singular?; end
  def associated_class; end
  def associated_dataset; end
  def associated_eager_dataset; end
  def association_dataset_for(object); end
  def association_dataset_proc; end
  def association_method; end
  def cached_fetch(key); end
  def cached_set(key, value); end
  def can_have_associated_objects?(obj); end
  def cloneable?(ref); end
  def dataset_method; end
  def dataset_need_primary_key?; end
  def default_eager_limit_strategy; end
  def delete_row_number_column(ds = nil); end
  def eager_graph_lazy_dataset?; end
  def eager_graph_limit_strategy(strategy); end
  def eager_limit_strategy; end
  def eager_load_results(eo, &block); end
  def eager_loader_key; end
  def eager_loading_dataset(eo = nil); end
  def eager_loading_predicate_condition(keys); end
  def eager_loading_use_associated_key?; end
  def filter_by_associations_add_conditions?; end
  def filter_by_associations_add_conditions_dataset_filter(ds); end
  def filter_by_associations_conditions_dataset; end
  def filter_by_associations_conditions_expression(obj); end
  def filter_by_associations_conditions_subquery_conditions(obj); end
  def filter_by_associations_limit_strategy; end
  def finalize; end
  def finalize_settings; end
  def handle_silent_modification_failure?; end
  def initialize_association_cache(objects); end
  def inspect; end
  def limit_and_offset; end
  def limit_to_single_row?; end
  def need_associated_primary_key?; end
  def offset; end
  def placeholder_eager_loader; end
  def placeholder_loader; end
  def possible_reciprocal_types; end
  def predicate_key_values(object); end
  def predicate_keys; end
  def qualify(table, col); end
  def qualify_assoc(col); end
  def qualify_cur(col); end
  def reciprocal; end
  def reciprocal_array?; end
  def reciprocal_association?(assoc_reflect); end
  def remove_all_method; end
  def remove_before_destroy?; end
  def remove_method; end
  def remove_should_check_existing?; end
  def returns_array?; end
  def select; end
  def set_reciprocal_to_self?; end
  def setter_method; end
  def slice_range(limit_and_offset = nil); end
  def subqueries_per_union; end
  def transform(s, &block); end
  def true_eager_graph_limit_strategy; end
  def true_eager_limit_strategy; end
  def union_eager_loader; end
  def use_placeholder_loader?; end
  include Sequel::Inflections
end
class Sequel::Model::Associations::ManyToOneAssociationReflection < Sequel::Model::Associations::AssociationReflection
  def ambiguous_reciprocal_type?; end
  def associated_object_keys; end
  def can_have_associated_objects?(obj); end
  def dataset_need_primary_key?; end
  def default_key; end
  def eager_graph_lazy_dataset?; end
  def eager_graph_limit_strategy(_); end
  def eager_limit_strategy; end
  def filter_by_associations_conditions_associated_keys; end
  def filter_by_associations_conditions_key; end
  def filter_by_associations_limit_strategy; end
  def finalize_settings; end
  def limit_to_single_row?; end
  def possible_reciprocal_types; end
  def predicate_key; end
  def predicate_key_methods; end
  def primary_key; end
  def primary_key_method; end
  def primary_key_methods; end
  def primary_keys; end
  def qualified_primary_key; end
  def reciprocal_array?; end
  def reciprocal_association?(assoc_reflect); end
  def reciprocal_type; end
  def returns_array?; end
  def set_reciprocal_to_self?; end
end
class Sequel::Model::Associations::OneToManyAssociationReflection < Sequel::Model::Associations::AssociationReflection
  def apply_correlated_subquery_limit_strategy(ds); end
  def apply_eager_graph_limit_strategy(strategy, ds); end
  def apply_filter_by_associations_limit_strategy(ds); end
  def associated_object_keys; end
  def can_have_associated_objects?(obj); end
  def cloneable?(ref); end
  def default_key; end
  def filter_by_associations_conditions_associated_keys; end
  def filter_by_associations_conditions_key; end
  def filter_by_associations_limit_alias_key; end
  def filter_by_associations_limit_aliases; end
  def filter_by_associations_limit_key; end
  def finalize_settings; end
  def handle_silent_modification_failure?; end
  def predicate_key; end
  def predicate_key_methods; end
  def primary_key; end
  def qualified_key; end
  def qualified_primary_key; end
  def reciprocal_array?; end
  def reciprocal_association?(assoc_reflect); end
  def reciprocal_type; end
  def remove_before_destroy?; end
  def remove_should_check_existing?; end
  def set_reciprocal_to_self?; end
  def true_eager_graph_limit_strategy; end
end
module Sequel::Model::Associations::SingularAssociationReflection
  def assign_singular?; end
  def default_eager_limit_strategy; end
  def filter_by_associations_add_conditions?; end
  def filter_by_associations_limit_strategy; end
  def limit_and_offset; end
  def returns_array?; end
  def true_eager_graph_limit_strategy; end
end
class Sequel::Model::Associations::OneToOneAssociationReflection < Sequel::Model::Associations::OneToManyAssociationReflection
  include Sequel::Model::Associations::SingularAssociationReflection
end
class Sequel::Model::Associations::ManyToManyAssociationReflection < Sequel::Model::Associations::AssociationReflection
  def _associated_dataset; end
  def associated_key_alias; end
  def associated_key_array; end
  def associated_key_column; end
  def associated_key_table; end
  def associated_object_keys; end
  def can_have_associated_objects?(obj); end
  def cloneable?(ref); end
  def default_associated_key_alias; end
  def default_eager_loader(eo); end
  def default_join_table; end
  def default_left_key; end
  def default_right_key; end
  def default_select; end
  def eager_loading_use_associated_key?; end
  def filter_by_associations_conditions_associated_keys; end
  def filter_by_associations_conditions_key; end
  def filter_by_associations_limit_alias_key; end
  def filter_by_associations_limit_aliases; end
  def filter_by_associations_limit_key; end
  def finalize_settings; end
  def join_table_alias; end
  def join_table_source; end
  def need_associated_primary_key?; end
  def predicate_key; end
  def predicate_key_methods; end
  def qualified_left_key; end
  def qualified_right_key; end
  def qualified_right_primary_key; end
  def reciprocal_association?(assoc_reflect); end
  def reciprocal_type; end
  def right_primary_key; end
  def right_primary_key_method; end
  def right_primary_key_methods; end
  def right_primary_keys; end
  def select; end
  def selection_is_qualified?(c); end
  def split_join_table_alias; end
end
class Sequel::Model::Associations::OneThroughOneAssociationReflection < Sequel::Model::Associations::ManyToManyAssociationReflection
  def default_right_key; end
  def reciprocal; end
  include Sequel::Model::Associations::SingularAssociationReflection
end
module Sequel::Model::Associations::AssociationDatasetMethods
  def association_reflection; end
  def model_object; end
  def non_sql_option?(key); end
end
module Sequel::Model::Associations::ClassMethods
  def all_association_reflections; end
  def associate(type, name, opts = nil, &block); end
  def association_full_join(*args, &block); end
  def association_inner_join(*args, &block); end
  def association_join(*args, &block); end
  def association_left_join(*args, &block); end
  def association_module(opts = nil); end
  def association_module_def(name, opts = nil, &block); end
  def association_module_private_def(name, opts = nil, &block); end
  def association_reflection(name); end
  def association_reflections; end
  def association_right_join(*args, &block); end
  def associations; end
  def autoreloading_associations; end
  def cache_associations; end
  def cache_associations=(arg0); end
  def def_association_instance_methods(opts); end
  def def_association_method(opts); end
  def def_many_to_many(opts); end
  def def_many_to_one(opts); end
  def def_one_through_one(opts); end
  def def_one_to_many(opts); end
  def def_one_to_one(opts); end
  def default_association_options; end
  def default_association_options=(arg0); end
  def default_association_type_options; end
  def default_association_type_options=(arg0); end
  def default_eager_limit_strategy; end
  def default_eager_limit_strategy=(arg0); end
  def eager(*args, &block); end
  def eager_graph(*args, &block); end
  def eager_graph_dataset(opts, eager_options); end
  def eager_graph_with_options(*args, &block); end
  def eager_load_results(opts, eo, &block); end
  def finalize_associations; end
  def freeze; end
  def inherited_instance_variables; end
  def many_to_many(name, opts = nil, &block); end
  def many_to_one(name, opts = nil, &block); end
  def one_through_one(name, opts = nil, &block); end
  def one_to_many(name, opts = nil, &block); end
  def one_to_one(name, opts = nil, &block); end
  def reload_db_schema?; end
end
module Sequel::Model::Associations::InstanceMethods
  def _apply_association_options(opts, ds); end
  def _associated_dataset(opts, dynamic_opts); end
  def _associated_object_loader(opts, dynamic_opts); end
  def _dataset(opts); end
  def _join_table_dataset(opts); end
  def _load_associated_object(opts, dynamic_opts); end
  def _load_associated_object_array(opts, dynamic_opts); end
  def _load_associated_object_via_primary_key(opts); end
  def _load_associated_objects(opts, dynamic_opts = nil); end
  def _refresh_set_values(hash); end
  def _set_associated_object(opts, o); end
  def add_associated_object(opts, o, *args); end
  def add_reciprocal_object(opts, o); end
  def array_uniq!(a); end
  def associations; end
  def change_column_value(column, value); end
  def ensure_associated_primary_key(opts, o, *args); end
  def freeze; end
  def initialize_copy(other); end
  def load_associated_objects(opts, dynamic_opts, &block); end
  def load_association_objects_options(dynamic_opts, &block); end
  def load_with_primary_key_lookup?(opts, dynamic_opts); end
  def make_add_associated_object(opts, o); end
  def remove_all_associated_objects(opts, *args); end
  def remove_associated_object(opts, o, *args); end
  def remove_check_existing_object_from_pk(opts, o, *args); end
  def remove_reciprocal_object(opts, o); end
  def run_association_callbacks(reflection, callback_type, object); end
  def set_associated_object(opts, o); end
  def set_associated_object_if_same?; end
  def set_one_through_one_associated_object(opts, o); end
  def set_one_to_one_associated_object(opts, o); end
end
module Sequel::Model::Associations::DatasetMethods
  def _association_join(type, associations); end
  def _eager_graph_build_associations(hashes, egl); end
  def add_association_filter_conditions(ref, obj, expr); end
  def as_hash(key_column = nil, value_column = nil, opts = nil); end
  def association_filter_expression(op, ref, obj); end
  def association_filter_handle_inversion(op, exp, cols); end
  def association_filter_key_expression(keys, meths, obj); end
  def association_full_join(*associations); end
  def association_inner_join(*associations); end
  def association_join(*associations); end
  def association_left_join(*associations); end
  def association_right_join(*associations); end
  def check_association(model, association); end
  def complex_expression_sql_append(sql, op, args); end
  def eager(*associations); end
  def eager_graph(*associations); end
  def eager_graph_association(ds, model, ta, requirements, r, *associations); end
  def eager_graph_associations(ds, model, ta, requirements, *associations); end
  def eager_graph_build_associations(hashes); end
  def eager_graph_check_association(model, association); end
  def eager_graph_loader; end
  def eager_graph_with_options(associations, opts = nil); end
  def eager_load(a, eager_assoc = nil); end
  def eager_options_for_associations(associations); end
  def many_to_many_association_filter_expression(op, ref, obj); end
  def many_to_one_association_filter_expression(op, ref, obj); end
  def non_sql_option?(key); end
  def one_through_one_association_filter_expression(op, ref, obj); end
  def one_to_many_association_filter_expression(op, ref, obj); end
  def one_to_one_association_filter_expression(op, ref, obj); end
  def post_load(all_records); end
  def to_hash_groups(key_column, value_column = nil, opts = nil); end
  def ungraphed; end
end
class Sequel::Model::Associations::EagerGraphLoader
  def _load(dependency_map, current, h); end
  def after_load_map; end
  def alias_map; end
  def column_maps; end
  def dependency_map; end
  def hfor(ta, h); end
  def hkey(h); end
  def initialize(dataset); end
  def limit_map; end
  def load(hashes); end
  def master; end
  def master_hfor(h); end
  def master_pk(h); end
  def pk(ta, h); end
  def post_process(records, dependency_map); end
  def primary_keys; end
  def reciprocal_map; end
  def records_map; end
  def reflection_map; end
  def row_procs; end
  def type_map; end
end
module Sequel::UnmodifiedIdentifiers
end
module Sequel::UnmodifiedIdentifiers::DatabaseMethods
  def folds_unquoted_identifiers_to_uppercase?; end
end
module Sequel::UnmodifiedIdentifiers::DatasetMethods
  def input_identifier(v); end
  def output_identifier(v); end
end
module Sequel::Postgres
  def self.mock_adapter_setup(db); end
end
module Sequel::Postgres::MockAdapterDatabaseMethods
  def bound_variable_arg(arg, conn); end
  def primary_key(table); end
end
class Sequel::Postgres::CreateTableGenerator < Sequel::Schema::CreateTableGenerator
  def exclude(elements, opts = nil); end
end
class Sequel::Postgres::AlterTableGenerator < Sequel::Schema::AlterTableGenerator
  def add_exclusion_constraint(elements, opts = nil); end
  def validate_constraint(name); end
end
class Sequel::Postgres::ExclusionConstraintViolation < Sequel::ConstraintViolation
end
module Sequel::Postgres::DatabaseMethods
  def add_conversion_proc(oid, callable = nil, &block); end
  def add_named_conversion_proc(name, &block); end
  def alter_table_add_column_sql(table, op); end
  def alter_table_drop_column_sql(table, op); end
  def alter_table_generator_class; end
  def alter_table_set_column_type_sql(table, op); end
  def alter_table_validate_constraint_sql(table, op); end
  def begin_new_transaction(conn, opts); end
  def begin_savepoint(conn, opts); end
  def check_constraints(table); end
  def column_definition_collate_sql(sql, column); end
  def column_definition_default_sql(sql, column); end
  def column_schema_normalize_default(default, type); end
  def combinable_alter_table_op?(op); end
  def commit_prepared_transaction(transaction_id, opts = nil); end
  def commit_transaction(conn, opts = nil); end
  def connection_configuration_sqls(opts = nil); end
  def constraint_definition_sql(constraint); end
  def conversion_procs; end
  def convert_serial_to_identity(table, opts = nil); end
  def copy_into_sql(table, opts); end
  def copy_table_sql(table, opts); end
  def create_function(name, definition, opts = nil); end
  def create_function_sql(name, definition, opts = nil); end
  def create_language(name, opts = nil); end
  def create_language_sql(name, opts = nil); end
  def create_schema(name, opts = nil); end
  def create_schema_sql(name, opts = nil); end
  def create_table_as_sql(name, sql, options); end
  def create_table_generator_class; end
  def create_table_prefix_sql(name, options); end
  def create_table_sql(name, generator, options); end
  def create_trigger(table, name, function, opts = nil); end
  def create_trigger_sql(table, name, function, opts = nil); end
  def create_view_prefix_sql(name, options); end
  def database_error_regexps; end
  def database_specific_error_class_from_sqlstate(sqlstate); end
  def database_type; end
  def do(code, opts = nil); end
  def drop_function(name, opts = nil); end
  def drop_function_sql(name, opts = nil); end
  def drop_index_sql(table, op); end
  def drop_language(name, opts = nil); end
  def drop_language_sql(name, opts = nil); end
  def drop_schema(name, opts = nil); end
  def drop_schema_sql(name, opts = nil); end
  def drop_table_sql(name, options); end
  def drop_trigger(table, name, opts = nil); end
  def drop_trigger_sql(table, name, opts = nil); end
  def drop_view_sql(name, opts = nil); end
  def filter_schema(ds, opts); end
  def foreign_key_list(table, opts = nil); end
  def freeze; end
  def index_definition_sql(table_name, index); end
  def indexes(table, opts = nil); end
  def initialize_postgres_adapter; end
  def locks; end
  def notify(channel, opts = nil); end
  def pg_class_relname(type, opts); end
  def prepared_arg_placeholder; end
  def primary_key(table, opts = nil); end
  def primary_key_sequence(table, opts = nil); end
  def refresh_view(name, opts = nil); end
  def regclass_oid(expr, opts = nil); end
  def remove_cached_schema(table); end
  def rename_table_sql(name, new_name); end
  def reset_primary_key_sequence(table); end
  def rollback_prepared_transaction(transaction_id, opts = nil); end
  def schema_column_type(db_type); end
  def schema_parse_table(table_name, opts); end
  def serial_primary_key_options; end
  def server_version(server = nil); end
  def set_transaction_isolation(conn, opts); end
  def sql_function_args(args); end
  def supports_combining_alter_table_ops?; end
  def supports_create_or_replace_view?; end
  def supports_create_table_if_not_exists?; end
  def supports_deferrable_constraints?; end
  def supports_deferrable_foreign_key_constraints?; end
  def supports_drop_table_if_exists?; end
  def supports_partial_indexes?; end
  def supports_prepared_transactions?; end
  def supports_savepoints?; end
  def supports_transaction_isolation_levels?; end
  def supports_transactional_ddl?; end
  def supports_trigger_conditions?; end
  def tables(opts = nil, &block); end
  def type_literal_generic_bignum_symbol(column); end
  def type_literal_generic_file(column); end
  def type_literal_generic_integer(column); end
  def type_literal_generic_string(column); end
  def type_supported?(type); end
  def values(v); end
  def view_with_check_option_support; end
  def views(opts = nil); end
  include Sequel::UnmodifiedIdentifiers::DatabaseMethods
end
module Sequel::Postgres::DatasetMethods
  def _import(columns, values, opts = nil); end
  def _insert_sql; end
  def _truncate_sql(table); end
  def _update_sql; end
  def analyze; end
  def check_truncation_allowed!; end
  def complex_expression_sql_append(sql, op, args); end
  def compound_dataset_sql_append(sql, ds); end
  def delete_from_sql(sql); end
  def delete_sql; end
  def delete_using_sql(sql); end
  def disable_insert_returning; end
  def explain(opts = nil); end
  def for_share; end
  def full_text_search(cols, terms, opts = nil); end
  def full_text_string_join(cols); end
  def insert(*values); end
  def insert_conflict(opts = nil); end
  def insert_conflict_sql(sql); end
  def insert_ignore; end
  def insert_pk; end
  def insert_select(*values); end
  def insert_select_sql(*values); end
  def insert_values_sql(sql); end
  def join_from_sql(type, sql); end
  def literal_blob_append(sql, v); end
  def literal_false; end
  def literal_float(value); end
  def literal_string_append(sql, v); end
  def literal_true; end
  def lock(mode, opts = nil); end
  def multi_insert_sql_strategy; end
  def non_sql_option?(key); end
  def overriding_system_value; end
  def overriding_user_value; end
  def requires_like_escape?; end
  def select_lock_sql(sql); end
  def select_sql; end
  def select_values_sql(sql); end
  def select_with_sql_base; end
  def server_version; end
  def supports_cte?(type = nil); end
  def supports_cte_in_subqueries?; end
  def supports_distinct_on?; end
  def supports_group_cube?; end
  def supports_group_rollup?; end
  def supports_grouping_sets?; end
  def supports_insert_conflict?; end
  def supports_insert_select?; end
  def supports_lateral_subqueries?; end
  def supports_modifying_joins?; end
  def supports_nowait?; end
  def supports_quoted_function_names?; end
  def supports_regexp?; end
  def supports_returning?(type); end
  def supports_skip_locked?; end
  def supports_timestamp_timezones?; end
  def supports_window_clause?; end
  def supports_window_function_frame_option?(option); end
  def supports_window_functions?; end
  def to_prepared_statement(type, *a); end
  def truncate(opts = nil); end
  def update_from_sql(sql); end
  def update_table_sql(sql); end
  include Sequel::UnmodifiedIdentifiers::DatasetMethods
end
module MtgScraper
  def call; end
  def self.call; end
end
