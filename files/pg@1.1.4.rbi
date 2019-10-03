# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   tapioca generate

# typed: true

module PG
  include(::PG::Constants)

  def self.connect(*args); end
  def self.init_openssl(_, _); end
  def self.init_ssl(_); end
  def self.is_threadsafe?; end
  def self.isthreadsafe; end
  def self.library_version; end
  def self.threadsafe?; end
  def self.version_string(include_buildnum = _); end
end

class PG::ActiveSqlTransaction < ::PG::InvalidTransactionState
end

class PG::AdminShutdown < ::PG::OperatorIntervention
end

class PG::AmbiguousAlias < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::AmbiguousColumn < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::AmbiguousFunction < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::AmbiguousParameter < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::ArraySubscriptError < ::PG::DataException
end

class PG::AssertFailure < ::PG::PlpgsqlError
end

class PG::BadCopyFileFormat < ::PG::DataException
end

class PG::BasicTypeMapBasedOnResult < ::PG::TypeMapByOid
  include(::PG::BasicTypeRegistry)

  def initialize(connection); end
end

class PG::BasicTypeMapForQueries < ::PG::TypeMapByClass
  include(::PG::BasicTypeRegistry)

  def initialize(connection); end


  private

  def array_encoders_by_klass; end
  def coder_by_name(format, direction, name); end
  def get_array_type(value); end
  def populate_encoder_list; end
end

PG::BasicTypeMapForQueries::DEFAULT_ARRAY_TYPE_MAP = T.let(T.unsafe(nil), Hash)

PG::BasicTypeMapForQueries::DEFAULT_TYPE_MAP = T.let(T.unsafe(nil), Hash)

class PG::BasicTypeMapForResults < ::PG::TypeMapByOid
  include(::PG::BasicTypeRegistry)

  def initialize(connection); end
end

class PG::BasicTypeMapForResults::WarningTypeMap < ::PG::TypeMapInRuby
  def initialize(typenames); end

  def typecast_result_value(result, _tuple, field); end
end

module PG::BasicTypeRegistry

  protected

  def check_format_and_direction(format, direction); end

  private

  def build_coder_maps(connection); end
  def supports_ranges?(connection); end

  def self.alias_type(format, new, old); end
  def self.register_type(format, name, encoder_class, decoder_class); end
end

PG::BasicTypeRegistry::CODERS_BY_NAME = T.let(T.unsafe(nil), Array)

class PG::BasicTypeRegistry::CoderMap
  def initialize(result, coders_by_name, format, arraycoder); end

  def coder_by_name(name); end
  def coder_by_oid(oid); end
  def coders; end
  def coders_by_name; end
  def coders_by_oid; end
  def typenames_by_oid; end
end

PG::BasicTypeRegistry::CoderMap::DONT_QUOTE_TYPES = T.let(T.unsafe(nil), Hash)

PG::BasicTypeRegistry::ValidDirections = T.let(T.unsafe(nil), Hash)

PG::BasicTypeRegistry::ValidFormats = T.let(T.unsafe(nil), Hash)

module PG::BinaryDecoder
end

class PG::BinaryDecoder::Boolean < ::PG::SimpleDecoder
  include(::PG::Coder::BinaryFormatting)
end

PG::BinaryDecoder::Boolean::CFUNC = T.let(T.unsafe(nil), Object)

class PG::BinaryDecoder::Bytea < ::PG::SimpleDecoder
  include(::PG::Coder::BinaryFormatting)
end

PG::BinaryDecoder::Bytea::CFUNC = T.let(T.unsafe(nil), Object)

class PG::BinaryDecoder::Float < ::PG::SimpleDecoder
  include(::PG::Coder::BinaryFormatting)
end

PG::BinaryDecoder::Float::CFUNC = T.let(T.unsafe(nil), Object)

class PG::BinaryDecoder::Integer < ::PG::SimpleDecoder
  include(::PG::Coder::BinaryFormatting)
end

PG::BinaryDecoder::Integer::CFUNC = T.let(T.unsafe(nil), Object)

class PG::BinaryDecoder::String < ::PG::SimpleDecoder
  include(::PG::Coder::BinaryFormatting)
end

PG::BinaryDecoder::String::CFUNC = T.let(T.unsafe(nil), Object)

class PG::BinaryDecoder::Timestamp < ::PG::SimpleDecoder
  include(::PG::Coder::BinaryFormatting)
end

PG::BinaryDecoder::Timestamp::CFUNC = T.let(T.unsafe(nil), Object)

class PG::BinaryDecoder::TimestampLocal < ::PG::BinaryDecoder::Timestamp
  def initialize(params = _); end
end

class PG::BinaryDecoder::TimestampUtc < ::PG::BinaryDecoder::Timestamp
  def initialize(params = _); end
end

class PG::BinaryDecoder::TimestampUtcToLocal < ::PG::BinaryDecoder::Timestamp
  def initialize(params = _); end
end

class PG::BinaryDecoder::ToBase64 < ::PG::CompositeDecoder
  include(::PG::Coder::BinaryFormatting)
end

PG::BinaryDecoder::ToBase64::CFUNC = T.let(T.unsafe(nil), Object)

module PG::BinaryEncoder
end

class PG::BinaryEncoder::Boolean < ::PG::SimpleEncoder
  include(::PG::Coder::BinaryFormatting)
end

PG::BinaryEncoder::Boolean::CFUNC = T.let(T.unsafe(nil), Object)

class PG::BinaryEncoder::Bytea < ::PG::SimpleEncoder
  include(::PG::Coder::BinaryFormatting)
end

PG::BinaryEncoder::Bytea::CFUNC = T.let(T.unsafe(nil), Object)

class PG::BinaryEncoder::FromBase64 < ::PG::CompositeEncoder
  include(::PG::Coder::BinaryFormatting)
end

PG::BinaryEncoder::FromBase64::CFUNC = T.let(T.unsafe(nil), Object)

class PG::BinaryEncoder::Int2 < ::PG::SimpleEncoder
  include(::PG::Coder::BinaryFormatting)
end

PG::BinaryEncoder::Int2::CFUNC = T.let(T.unsafe(nil), Object)

class PG::BinaryEncoder::Int4 < ::PG::SimpleEncoder
  include(::PG::Coder::BinaryFormatting)
end

PG::BinaryEncoder::Int4::CFUNC = T.let(T.unsafe(nil), Object)

class PG::BinaryEncoder::Int8 < ::PG::SimpleEncoder
  include(::PG::Coder::BinaryFormatting)
end

PG::BinaryEncoder::Int8::CFUNC = T.let(T.unsafe(nil), Object)

class PG::BinaryEncoder::String < ::PG::SimpleEncoder
  include(::PG::Coder::BinaryFormatting)
end

PG::BinaryEncoder::String::CFUNC = T.let(T.unsafe(nil), Object)

class PG::BranchTransactionAlreadyActive < ::PG::InvalidTransactionState
end

class PG::CannotCoerce < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::CannotConnectNow < ::PG::OperatorIntervention
end

class PG::CantChangeRuntimeParam < ::PG::ObjectNotInPrerequisiteState
end

class PG::CardinalityViolation < ::PG::ServerError
end

class PG::CaseNotFound < ::PG::ServerError
end

class PG::CharacterNotInRepertoire < ::PG::DataException
end

class PG::CheckViolation < ::PG::IntegrityConstraintViolation
end

class PG::Coder
  def initialize(params = _); end

  def ==(v); end
  def decode(*_); end
  def dup; end
  def encode(*_); end
  def flags; end
  def flags=(_); end
  def format; end
  def format=(_); end
  def inspect; end
  def marshal_dump; end
  def marshal_load(str); end
  def name; end
  def name=(_); end
  def oid; end
  def oid=(_); end
  def to_h; end
end

module PG::Coder::BinaryFormatting
  def initialize(params = _); end
end

PG::Coder::BinaryFormatting::Params = T.let(T.unsafe(nil), Hash)

PG::Coder::FORMAT_ERROR_MASK = T.let(T.unsafe(nil), Integer)

PG::Coder::FORMAT_ERROR_TO_PARTIAL = T.let(T.unsafe(nil), Integer)

PG::Coder::FORMAT_ERROR_TO_RAISE = T.let(T.unsafe(nil), Integer)

PG::Coder::FORMAT_ERROR_TO_STRING = T.let(T.unsafe(nil), Integer)

PG::Coder::TIMESTAMP_APP_LOCAL = T.let(T.unsafe(nil), Integer)

PG::Coder::TIMESTAMP_APP_UTC = T.let(T.unsafe(nil), Integer)

PG::Coder::TIMESTAMP_DB_LOCAL = T.let(T.unsafe(nil), Integer)

PG::Coder::TIMESTAMP_DB_UTC = T.let(T.unsafe(nil), Integer)

class PG::CollationMismatch < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::CompositeCoder < ::PG::Coder
  def delimiter; end
  def delimiter=(_); end
  def elements_type; end
  def elements_type=(_); end
  def inspect; end
  def needs_quotation=(_); end
  def needs_quotation?; end
  def to_h; end
end

class PG::CompositeDecoder < ::PG::CompositeCoder
end

class PG::CompositeEncoder < ::PG::CompositeCoder
end

class PG::ConfigFileError < ::PG::ServerError
end

class PG::ConfigurationLimitExceeded < ::PG::InsufficientResources
end

class PG::Connection
  include(::PG::Constants)

  def initialize(*_); end

  def async_describe_portal(_); end
  def async_describe_prepared(_); end
  def async_exec(*_); end
  def async_exec_params(*_); end
  def async_exec_prepared(*_); end
  def async_prepare(*_); end
  def async_query(*_); end
  def backend_pid; end
  def block(*_); end
  def cancel; end
  def client_encoding=(_); end
  def close; end
  def conndefaults; end
  def conndefaults_hash; end
  def connect_poll; end
  def connection_needs_password; end
  def connection_used_password; end
  def conninfo; end
  def conninfo_hash; end
  def consume_input; end
  def copy_data(sql, coder = _); end
  def db; end
  def decoder_for_get_copy_data; end
  def decoder_for_get_copy_data=(_); end
  def describe_portal(_); end
  def describe_prepared(_); end
  def discard_results; end
  def encoder_for_put_copy_data; end
  def encoder_for_put_copy_data=(_); end
  def encrypt_password(*_); end
  def error_message; end
  def escape(_); end
  def escape_bytea(_); end
  def escape_identifier(_); end
  def escape_literal(_); end
  def escape_string(_); end
  def exec(*_); end
  def exec_params(*_); end
  def exec_prepared(*_); end
  def external_encoding; end
  def finish; end
  def finished?; end
  def flush; end
  def get_client_encoding; end
  def get_copy_data(*_); end
  def get_last_result; end
  def get_result; end
  def guess_result_memsize=(_); end
  def host; end
  def internal_encoding; end
  def internal_encoding=(_); end
  def is_busy; end
  def isnonblocking; end
  def lo_close(_); end
  def lo_creat(*_); end
  def lo_create(_); end
  def lo_export(_, _); end
  def lo_import(_); end
  def lo_lseek(_, _, _); end
  def lo_open(*_); end
  def lo_read(_, _); end
  def lo_seek(_, _, _); end
  def lo_tell(_); end
  def lo_truncate(_, _); end
  def lo_unlink(_); end
  def lo_write(_, _); end
  def loclose(_); end
  def locreat(*_); end
  def locreate(_); end
  def loexport(_, _); end
  def loimport(_); end
  def lolseek(_, _, _); end
  def loopen(*_); end
  def loread(_, _); end
  def loseek(_, _, _); end
  def lotell(_); end
  def lotruncate(_, _); end
  def lounlink(_); end
  def lowrite(_, _); end
  def make_empty_pgresult(_); end
  def nonblocking?; end
  def notifies; end
  def notifies_wait(*_); end
  def options; end
  def parameter_status(_); end
  def pass; end
  def port; end
  def prepare(*_); end
  def protocol_version; end
  def put_copy_data(*_); end
  def put_copy_end(*_); end
  def query(*_); end
  def quote_ident(_); end
  def reset; end
  def reset_poll; end
  def reset_start; end
  def send_describe_portal(_); end
  def send_describe_prepared(_); end
  def send_prepare(*_); end
  def send_query(*_); end
  def send_query_params(*_); end
  def send_query_prepared(*_); end
  def server_version; end
  def set_client_encoding(_); end
  def set_default_encoding; end
  def set_error_verbosity(_); end
  def set_notice_processor; end
  def set_notice_receiver; end
  def set_single_row_mode; end
  def setnonblocking(_); end
  def socket; end
  def socket_io; end
  def ssl_attribute(_); end
  def ssl_attribute_names; end
  def ssl_attributes; end
  def ssl_in_use?; end
  def status; end
  def sync_describe_portal(_); end
  def sync_describe_prepared(_); end
  def sync_exec(*_); end
  def sync_exec_params(*_); end
  def sync_exec_prepared(*_); end
  def sync_prepare(*_); end
  def trace(_); end
  def transaction; end
  def transaction_status; end
  def tty; end
  def type_map_for_queries; end
  def type_map_for_queries=(_); end
  def type_map_for_results; end
  def type_map_for_results=(_); end
  def unescape_bytea(_); end
  def untrace; end
  def user; end
  def wait_for_notify(*_); end

  def self.async_api=(enable); end
  def self.conndefaults; end
  def self.conndefaults_hash; end
  def self.connect(*_); end
  def self.connect_start(*_); end
  def self.encrypt_password(_, _); end
  def self.escape(_); end
  def self.escape_bytea(_); end
  def self.escape_string(_); end
  def self.isthreadsafe; end
  def self.open(*_); end
  def self.parse_connect_args(*args); end
  def self.ping(*_); end
  def self.quote_connstr(value); end
  def self.quote_ident(_); end
  def self.setdb(*_); end
  def self.setdblogin(*_); end
  def self.unescape_bytea(_); end
end

PG::Connection::CONNECT_ARGUMENT_ORDER = T.let(T.unsafe(nil), Array)

PG::Connection::REDIRECT_METHODS = T.let(T.unsafe(nil), Hash)

class PG::ConnectionBad < ::PG::Error
end

class PG::ConnectionDoesNotExist < ::PG::ConnectionException
end

class PG::ConnectionException < ::PG::ServerError
end

class PG::ConnectionFailure < ::PG::ConnectionException
end

module PG::Constants
end

PG::Constants::CONNECTION_AUTH_OK = T.let(T.unsafe(nil), Integer)

PG::Constants::CONNECTION_AWAITING_RESPONSE = T.let(T.unsafe(nil), Integer)

PG::Constants::CONNECTION_BAD = T.let(T.unsafe(nil), Integer)

PG::Constants::CONNECTION_MADE = T.let(T.unsafe(nil), Integer)

PG::Constants::CONNECTION_NEEDED = T.let(T.unsafe(nil), Integer)

PG::Constants::CONNECTION_OK = T.let(T.unsafe(nil), Integer)

PG::Constants::CONNECTION_SETENV = T.let(T.unsafe(nil), Integer)

PG::Constants::CONNECTION_SSL_STARTUP = T.let(T.unsafe(nil), Integer)

PG::Constants::CONNECTION_STARTED = T.let(T.unsafe(nil), Integer)

PG::Constants::INVALID_OID = T.let(T.unsafe(nil), Integer)

PG::Constants::INV_READ = T.let(T.unsafe(nil), Integer)

PG::Constants::INV_WRITE = T.let(T.unsafe(nil), Integer)

PG::Constants::InvalidOid = T.let(T.unsafe(nil), Integer)

PG::Constants::PGRES_BAD_RESPONSE = T.let(T.unsafe(nil), Integer)

PG::Constants::PGRES_COMMAND_OK = T.let(T.unsafe(nil), Integer)

PG::Constants::PGRES_COPY_BOTH = T.let(T.unsafe(nil), Integer)

PG::Constants::PGRES_COPY_IN = T.let(T.unsafe(nil), Integer)

PG::Constants::PGRES_COPY_OUT = T.let(T.unsafe(nil), Integer)

PG::Constants::PGRES_EMPTY_QUERY = T.let(T.unsafe(nil), Integer)

PG::Constants::PGRES_FATAL_ERROR = T.let(T.unsafe(nil), Integer)

PG::Constants::PGRES_NONFATAL_ERROR = T.let(T.unsafe(nil), Integer)

PG::Constants::PGRES_POLLING_FAILED = T.let(T.unsafe(nil), Integer)

PG::Constants::PGRES_POLLING_OK = T.let(T.unsafe(nil), Integer)

PG::Constants::PGRES_POLLING_READING = T.let(T.unsafe(nil), Integer)

PG::Constants::PGRES_POLLING_WRITING = T.let(T.unsafe(nil), Integer)

PG::Constants::PGRES_SINGLE_TUPLE = T.let(T.unsafe(nil), Integer)

PG::Constants::PGRES_TUPLES_OK = T.let(T.unsafe(nil), Integer)

PG::Constants::PG_DIAG_COLUMN_NAME = T.let(T.unsafe(nil), Integer)

PG::Constants::PG_DIAG_CONSTRAINT_NAME = T.let(T.unsafe(nil), Integer)

PG::Constants::PG_DIAG_CONTEXT = T.let(T.unsafe(nil), Integer)

PG::Constants::PG_DIAG_DATATYPE_NAME = T.let(T.unsafe(nil), Integer)

PG::Constants::PG_DIAG_INTERNAL_POSITION = T.let(T.unsafe(nil), Integer)

PG::Constants::PG_DIAG_INTERNAL_QUERY = T.let(T.unsafe(nil), Integer)

PG::Constants::PG_DIAG_MESSAGE_DETAIL = T.let(T.unsafe(nil), Integer)

PG::Constants::PG_DIAG_MESSAGE_HINT = T.let(T.unsafe(nil), Integer)

PG::Constants::PG_DIAG_MESSAGE_PRIMARY = T.let(T.unsafe(nil), Integer)

PG::Constants::PG_DIAG_SCHEMA_NAME = T.let(T.unsafe(nil), Integer)

PG::Constants::PG_DIAG_SEVERITY = T.let(T.unsafe(nil), Integer)

PG::Constants::PG_DIAG_SOURCE_FILE = T.let(T.unsafe(nil), Integer)

PG::Constants::PG_DIAG_SOURCE_FUNCTION = T.let(T.unsafe(nil), Integer)

PG::Constants::PG_DIAG_SOURCE_LINE = T.let(T.unsafe(nil), Integer)

PG::Constants::PG_DIAG_SQLSTATE = T.let(T.unsafe(nil), Integer)

PG::Constants::PG_DIAG_STATEMENT_POSITION = T.let(T.unsafe(nil), Integer)

PG::Constants::PG_DIAG_TABLE_NAME = T.let(T.unsafe(nil), Integer)

PG::Constants::PQERRORS_DEFAULT = T.let(T.unsafe(nil), Integer)

PG::Constants::PQERRORS_TERSE = T.let(T.unsafe(nil), Integer)

PG::Constants::PQERRORS_VERBOSE = T.let(T.unsafe(nil), Integer)

PG::Constants::PQPING_NO_ATTEMPT = T.let(T.unsafe(nil), Integer)

PG::Constants::PQPING_NO_RESPONSE = T.let(T.unsafe(nil), Integer)

PG::Constants::PQPING_OK = T.let(T.unsafe(nil), Integer)

PG::Constants::PQPING_REJECT = T.let(T.unsafe(nil), Integer)

PG::Constants::PQTRANS_ACTIVE = T.let(T.unsafe(nil), Integer)

PG::Constants::PQTRANS_IDLE = T.let(T.unsafe(nil), Integer)

PG::Constants::PQTRANS_INERROR = T.let(T.unsafe(nil), Integer)

PG::Constants::PQTRANS_INTRANS = T.let(T.unsafe(nil), Integer)

PG::Constants::PQTRANS_UNKNOWN = T.let(T.unsafe(nil), Integer)

PG::Constants::SEEK_CUR = T.let(T.unsafe(nil), Integer)

PG::Constants::SEEK_END = T.let(T.unsafe(nil), Integer)

PG::Constants::SEEK_SET = T.let(T.unsafe(nil), Integer)

class PG::CopyCoder < ::PG::Coder
  def delimiter; end
  def delimiter=(_); end
  def null_string; end
  def null_string=(_); end
  def to_h; end
  def type_map; end
  def type_map=(_); end
end

class PG::CopyDecoder < ::PG::CopyCoder
  include(::PG::Coder::BinaryFormatting)
end

class PG::CopyEncoder < ::PG::CopyCoder
  include(::PG::Coder::BinaryFormatting)
end

class PG::CrashShutdown < ::PG::OperatorIntervention
end

class PG::DataCorrupted < ::PG::InternalError
end

class PG::DataException < ::PG::ServerError
end

class PG::DatabaseDropped < ::PG::OperatorIntervention
end

class PG::DatatypeMismatch < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::DatetimeFieldOverflow < ::PG::DataException
end

class PG::DependentObjectsStillExist < ::PG::DependentPrivilegeDescriptorsStillExist
end

class PG::DependentPrivilegeDescriptorsStillExist < ::PG::ServerError
end

class PG::DiagnosticsException < ::PG::ServerError
end

class PG::DiskFull < ::PG::InsufficientResources
end

class PG::DivisionByZero < ::PG::DataException
end

class PG::DuplicateAlias < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::DuplicateColumn < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::DuplicateCursor < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::DuplicateDatabase < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::DuplicateFile < ::PG::SystemError
end

class PG::DuplicateFunction < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::DuplicateObject < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::DuplicatePstatement < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::DuplicateSchema < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::DuplicateTable < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::EREContainingSqlNotPermitted < ::PG::ExternalRoutineException
end

class PG::EREModifyingSqlDataNotPermitted < ::PG::ExternalRoutineException
end

class PG::EREProhibitedSqlStatementAttempted < ::PG::ExternalRoutineException
end

class PG::EREReadingSqlDataNotPermitted < ::PG::ExternalRoutineException
end

class PG::ERIEEventTriggerProtocolViolated < ::PG::ExternalRoutineInvocationException
end

class PG::ERIEInvalidSqlstateReturned < ::PG::ExternalRoutineInvocationException
end

class PG::ERIENullValueNotAllowed < ::PG::ExternalRoutineInvocationException
end

class PG::ERIESrfProtocolViolated < ::PG::ExternalRoutineInvocationException
end

class PG::ERIETriggerProtocolViolated < ::PG::ExternalRoutineInvocationException
end

PG::ERROR_CLASSES = T.let(T.unsafe(nil), Hash)

class PG::Error < ::StandardError
  def connection; end
  def error; end
  def result; end
end

class PG::ErrorInAssignment < ::PG::DataException
end

class PG::EscapeCharacterConflict < ::PG::DataException
end

class PG::ExclusionViolation < ::PG::IntegrityConstraintViolation
end

class PG::ExternalRoutineException < ::PG::ServerError
end

class PG::ExternalRoutineInvocationException < ::PG::ServerError
end

class PG::FdwColumnNameNotFound < ::PG::FdwError
end

class PG::FdwDynamicParameterValueNeeded < ::PG::FdwError
end

class PG::FdwError < ::PG::ServerError
end

class PG::FdwFunctionSequenceError < ::PG::FdwError
end

class PG::FdwInconsistentDescriptorInformation < ::PG::FdwError
end

class PG::FdwInvalidAttributeValue < ::PG::FdwError
end

class PG::FdwInvalidColumnName < ::PG::FdwError
end

class PG::FdwInvalidColumnNumber < ::PG::FdwError
end

class PG::FdwInvalidDataType < ::PG::FdwError
end

class PG::FdwInvalidDataTypeDescriptors < ::PG::FdwError
end

class PG::FdwInvalidDescriptorFieldIdentifier < ::PG::FdwError
end

class PG::FdwInvalidHandle < ::PG::FdwError
end

class PG::FdwInvalidOptionIndex < ::PG::FdwError
end

class PG::FdwInvalidOptionName < ::PG::FdwError
end

class PG::FdwInvalidStringFormat < ::PG::FdwError
end

class PG::FdwInvalidStringLengthOrBufferLength < ::PG::FdwError
end

class PG::FdwInvalidUseOfNullPointer < ::PG::FdwError
end

class PG::FdwNoSchemas < ::PG::FdwError
end

class PG::FdwOptionNameNotFound < ::PG::FdwError
end

class PG::FdwOutOfMemory < ::PG::FdwError
end

class PG::FdwReplyHandle < ::PG::FdwError
end

class PG::FdwSchemaNotFound < ::PG::FdwError
end

class PG::FdwTableNotFound < ::PG::FdwError
end

class PG::FdwTooManyHandles < ::PG::FdwError
end

class PG::FdwUnableToCreateExecution < ::PG::FdwError
end

class PG::FdwUnableToCreateReply < ::PG::FdwError
end

class PG::FdwUnableToEstablishConnection < ::PG::FdwError
end

class PG::FeatureNotSupported < ::PG::ServerError
end

class PG::FloatingPointException < ::PG::DataException
end

class PG::ForeignKeyViolation < ::PG::IntegrityConstraintViolation
end

class PG::GeneratedAlways < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::GroupingError < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::HeldCursorRequiresSameIsolationLevel < ::PG::InvalidTransactionState
end

class PG::IdleInTransactionSessionTimeout < ::PG::InvalidTransactionState
end

class PG::InFailedSqlTransaction < ::PG::InvalidTransactionState
end

class PG::InappropriateAccessModeForBranchTransaction < ::PG::InvalidTransactionState
end

class PG::InappropriateIsolationLevelForBranchTransaction < ::PG::InvalidTransactionState
end

class PG::IndeterminateCollation < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::IndeterminateDatatype < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::IndexCorrupted < ::PG::InternalError
end

class PG::IndicatorOverflow < ::PG::DataException
end

class PG::InsufficientPrivilege < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::InsufficientResources < ::PG::ServerError
end

class PG::IntegrityConstraintViolation < ::PG::ServerError
end

class PG::InternalError < ::PG::ServerError
end

class PG::IntervalFieldOverflow < ::PG::DataException
end

class PG::InvalidArgumentForLog < ::PG::DataException
end

class PG::InvalidArgumentForNthValue < ::PG::DataException
end

class PG::InvalidArgumentForNtile < ::PG::DataException
end

class PG::InvalidArgumentForPowerFunction < ::PG::DataException
end

class PG::InvalidArgumentForWidthBucketFunction < ::PG::DataException
end

class PG::InvalidAuthorizationSpecification < ::PG::ServerError
end

class PG::InvalidBinaryRepresentation < ::PG::DataException
end

class PG::InvalidCatalogName < ::PG::ServerError
end

class PG::InvalidChangeOfResultFields < ::PG::Error
end

class PG::InvalidCharacterValueForCast < ::PG::DataException
end

class PG::InvalidColumnDefinition < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::InvalidColumnReference < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::InvalidCursorDefinition < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::InvalidCursorName < ::PG::ServerError
end

class PG::InvalidCursorState < ::PG::ServerError
end

class PG::InvalidDatabaseDefinition < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::InvalidDatetimeFormat < ::PG::DataException
end

class PG::InvalidEscapeCharacter < ::PG::DataException
end

class PG::InvalidEscapeOctet < ::PG::DataException
end

class PG::InvalidEscapeSequence < ::PG::DataException
end

class PG::InvalidForeignKey < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::InvalidFunctionDefinition < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::InvalidGrantOperation < ::PG::InvalidGrantor
end

class PG::InvalidGrantor < ::PG::ServerError
end

class PG::InvalidIndicatorParameterValue < ::PG::DataException
end

class PG::InvalidName < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::InvalidObjectDefinition < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::InvalidParameterValue < ::PG::DataException
end

class PG::InvalidPassword < ::PG::InvalidAuthorizationSpecification
end

class PG::InvalidPrecedingOrFollowingSize < ::PG::DataException
end

class PG::InvalidPstatementDefinition < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::InvalidRecursion < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::InvalidRegularExpression < ::PG::DataException
end

class PG::InvalidResultStatus < ::PG::Error
end

class PG::InvalidRoleSpecification < ::PG::ServerError
end

class PG::InvalidRowCountInLimitClause < ::PG::DataException
end

class PG::InvalidRowCountInResultOffsetClause < ::PG::DataException
end

class PG::InvalidSchemaDefinition < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::InvalidSchemaName < ::PG::ServerError
end

class PG::InvalidSqlStatementName < ::PG::ServerError
end

class PG::InvalidTableDefinition < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::InvalidTablesampleArgument < ::PG::DataException
end

class PG::InvalidTablesampleRepeat < ::PG::DataException
end

class PG::InvalidTextRepresentation < ::PG::DataException
end

class PG::InvalidTimeZoneDisplacementValue < ::PG::DataException
end

class PG::InvalidTransactionInitiation < ::PG::ServerError
end

class PG::InvalidTransactionState < ::PG::ServerError
end

class PG::InvalidTransactionTermination < ::PG::ServerError
end

class PG::InvalidUseOfEscapeCharacter < ::PG::DataException
end

class PG::InvalidXmlComment < ::PG::DataException
end

class PG::InvalidXmlContent < ::PG::DataException
end

class PG::InvalidXmlDocument < ::PG::DataException
end

class PG::InvalidXmlProcessingInstruction < ::PG::DataException
end

class PG::IoError < ::PG::SystemError
end

class PG::LEInvalidSpecification < ::PG::LocatorException
end

class PG::LocatorException < ::PG::ServerError
end

class PG::LockFileExists < ::PG::ConfigFileError
end

class PG::LockNotAvailable < ::PG::ObjectNotInPrerequisiteState
end

class PG::MostSpecificTypeMismatch < ::PG::DataException
end

class PG::NameTooLong < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::NoActiveSqlTransaction < ::PG::InvalidTransactionState
end

class PG::NoActiveSqlTransactionForBranchTransaction < ::PG::InvalidTransactionState
end

class PG::NoDataFound < ::PG::PlpgsqlError
end

class PG::NoResultError < ::PG::Error
end

class PG::NonstandardUseOfEscapeCharacter < ::PG::DataException
end

class PG::NotAllCopyDataRetrieved < ::PG::Error
end

class PG::NotAnXmlDocument < ::PG::DataException
end

class PG::NotNullViolation < ::PG::IntegrityConstraintViolation
end

class PG::NullValueNoIndicatorParameter < ::PG::DataException
end

class PG::NullValueNotAllowed < ::PG::DataException
end

class PG::NumericValueOutOfRange < ::PG::DataException
end

class PG::ObjectInUse < ::PG::ObjectNotInPrerequisiteState
end

class PG::ObjectNotInPrerequisiteState < ::PG::ServerError
end

class PG::OperatorIntervention < ::PG::ServerError
end

class PG::OutOfMemory < ::PG::InsufficientResources
end

class PG::PlpgsqlError < ::PG::ServerError
end

class PG::ProgramLimitExceeded < ::PG::ServerError
end

class PG::ProtocolViolation < ::PG::ConnectionException
end

class PG::QueryCanceled < ::PG::OperatorIntervention
end

PG::REVISION = T.let(T.unsafe(nil), String)

class PG::RaiseException < ::PG::PlpgsqlError
end

class PG::ReadOnlySqlTransaction < ::PG::InvalidTransactionState
end

class PG::ReservedName < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::RestrictViolation < ::PG::IntegrityConstraintViolation
end

class PG::Result
  include(::PG::Constants)
  include(::Enumerable)

  def [](_); end
  def autoclear?; end
  def check; end
  def check_result; end
  def clear; end
  def cleared?; end
  def cmd_status; end
  def cmd_tuples; end
  def cmdtuples; end
  def column_values(_); end
  def each; end
  def each_row; end
  def error_field(_); end
  def error_message; end
  def fformat(_); end
  def field_values(_); end
  def fields; end
  def fmod(_); end
  def fname(_); end
  def fnumber(_); end
  def fsize(_); end
  def ftable(_); end
  def ftablecol(_); end
  def ftype(_); end
  def getisnull(_, _); end
  def getlength(_, _); end
  def getvalue(_, _); end
  def inspect; end
  def map_types!(type_map); end
  def nfields; end
  def nparams; end
  def ntuples; end
  def num_fields; end
  def num_tuples; end
  def oid_value; end
  def paramtype(_); end
  def res_status(_); end
  def result_error_field(_); end
  def result_error_message; end
  def result_status; end
  def stream_each; end
  def stream_each_row; end
  def stream_each_tuple; end
  def tuple(_); end
  def tuple_values(_); end
  def type_map; end
  def type_map=(_); end
  def values; end
end

class PG::SEInvalidSpecification < ::PG::SavepointException
end

class PG::SREFunctionExecutedNoReturnStatement < ::PG::SqlRoutineException
end

class PG::SREModifyingSqlDataNotPermitted < ::PG::SqlRoutineException
end

class PG::SREProhibitedSqlStatementAttempted < ::PG::SqlRoutineException
end

class PG::SREReadingSqlDataNotPermitted < ::PG::SqlRoutineException
end

class PG::SavepointException < ::PG::ServerError
end

class PG::SchemaAndDataStatementMixingNotSupported < ::PG::InvalidTransactionState
end

class PG::SequenceGeneratorLimitExceeded < ::PG::DataException
end

class PG::ServerError < ::PG::Error
end

class PG::SimpleCoder < ::PG::Coder
end

class PG::SimpleDecoder < ::PG::SimpleCoder
end

class PG::SimpleEncoder < ::PG::SimpleCoder
end

class PG::SnapshotTooOld < ::PG::ServerError
end

class PG::SqlRoutineException < ::PG::ServerError
end

class PG::SqlStatementNotYetComplete < ::PG::ServerError
end

class PG::SqlclientUnableToEstablishSqlconnection < ::PG::ConnectionException
end

class PG::SqlserverRejectedEstablishmentOfSqlconnection < ::PG::ConnectionException
end

class PG::StackedDiagnosticsAccessedWithoutActiveHandler < ::PG::DiagnosticsException
end

class PG::StatementTooComplex < ::PG::ProgramLimitExceeded
end

class PG::StringDataLengthMismatch < ::PG::DataException
end

class PG::StringDataRightTruncation < ::PG::DataException
end

class PG::SubstringError < ::PG::DataException
end

class PG::SyntaxError < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::SyntaxErrorOrAccessRuleViolation < ::PG::ServerError
end

class PG::SystemError < ::PG::ServerError
end

class PG::TRDeadlockDetected < ::PG::TransactionRollback
end

class PG::TRIntegrityConstraintViolation < ::PG::TransactionRollback
end

class PG::TRSerializationFailure < ::PG::TransactionRollback
end

class PG::TRStatementCompletionUnknown < ::PG::TransactionRollback
end

module PG::TextDecoder
end

class PG::TextDecoder::Array < ::PG::CompositeDecoder
end

PG::TextDecoder::Array::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextDecoder::Boolean < ::PG::SimpleDecoder
end

PG::TextDecoder::Boolean::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextDecoder::Bytea < ::PG::SimpleDecoder
end

PG::TextDecoder::Bytea::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextDecoder::CopyRow < ::PG::CopyDecoder
end

PG::TextDecoder::CopyRow::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextDecoder::Date < ::PG::SimpleDecoder
  def decode(string, tuple = _, field = _); end
end

PG::TextDecoder::Date::ISO_DATE = T.let(T.unsafe(nil), Regexp)

class PG::TextDecoder::Float < ::PG::SimpleDecoder
end

PG::TextDecoder::Float::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextDecoder::FromBase64 < ::PG::CompositeDecoder
end

PG::TextDecoder::FromBase64::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextDecoder::Identifier < ::PG::SimpleDecoder
end

PG::TextDecoder::Identifier::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextDecoder::Inet < ::PG::SimpleDecoder
end

PG::TextDecoder::Inet::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextDecoder::Integer < ::PG::SimpleDecoder
end

PG::TextDecoder::Integer::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextDecoder::JSON < ::PG::SimpleDecoder
  def decode(string, tuple = _, field = _); end
end

class PG::TextDecoder::Numeric < ::PG::SimpleDecoder
end

PG::TextDecoder::Numeric::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextDecoder::String < ::PG::SimpleDecoder
end

PG::TextDecoder::String::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextDecoder::Timestamp < ::PG::SimpleDecoder
end

PG::TextDecoder::Timestamp::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextDecoder::TimestampLocal < ::PG::TextDecoder::Timestamp
  def initialize(params = _); end
end

class PG::TextDecoder::TimestampUtc < ::PG::TextDecoder::Timestamp
  def initialize(params = _); end
end

class PG::TextDecoder::TimestampUtcToLocal < ::PG::TextDecoder::Timestamp
  def initialize(params = _); end
end

PG::TextDecoder::TimestampWithTimeZone = PG::TextDecoder::Timestamp

PG::TextDecoder::TimestampWithoutTimeZone = PG::TextDecoder::TimestampLocal

module PG::TextEncoder
end

class PG::TextEncoder::Array < ::PG::CompositeEncoder
end

PG::TextEncoder::Array::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextEncoder::Boolean < ::PG::SimpleEncoder
end

PG::TextEncoder::Boolean::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextEncoder::Bytea < ::PG::SimpleEncoder
end

PG::TextEncoder::Bytea::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextEncoder::CopyRow < ::PG::CopyEncoder
end

PG::TextEncoder::CopyRow::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextEncoder::Date < ::PG::SimpleEncoder
  def encode(value); end
end

PG::TextEncoder::Date::STRFTIME_ISO_DATE = T.let(T.unsafe(nil), String)

class PG::TextEncoder::Float < ::PG::SimpleEncoder
end

PG::TextEncoder::Float::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextEncoder::Identifier < ::PG::SimpleEncoder
end

PG::TextEncoder::Identifier::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextEncoder::Inet < ::PG::SimpleEncoder
  def encode(value); end
end

class PG::TextEncoder::Integer < ::PG::SimpleEncoder
end

PG::TextEncoder::Integer::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextEncoder::JSON < ::PG::SimpleEncoder
  def encode(value); end
end

class PG::TextEncoder::Numeric < ::PG::SimpleEncoder
  def encode(value); end
end

class PG::TextEncoder::QuotedLiteral < ::PG::CompositeEncoder
end

PG::TextEncoder::QuotedLiteral::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextEncoder::String < ::PG::SimpleEncoder
end

PG::TextEncoder::String::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TextEncoder::TimestampUtc < ::PG::SimpleEncoder
  def encode(value); end
end

PG::TextEncoder::TimestampUtc::STRFTIME_ISO_DATETIME_WITHOUT_TIMEZONE_UTC = T.let(T.unsafe(nil), String)

class PG::TextEncoder::TimestampWithTimeZone < ::PG::SimpleEncoder
  def encode(value); end
end

PG::TextEncoder::TimestampWithTimeZone::STRFTIME_ISO_DATETIME_WITH_TIMEZONE = T.let(T.unsafe(nil), String)

class PG::TextEncoder::TimestampWithoutTimeZone < ::PG::SimpleEncoder
  def encode(value); end
end

PG::TextEncoder::TimestampWithoutTimeZone::STRFTIME_ISO_DATETIME_WITHOUT_TIMEZONE = T.let(T.unsafe(nil), String)

class PG::TextEncoder::ToBase64 < ::PG::CompositeEncoder
end

PG::TextEncoder::ToBase64::CFUNC = T.let(T.unsafe(nil), Object)

class PG::TooManyArguments < ::PG::ProgramLimitExceeded
end

class PG::TooManyColumns < ::PG::ProgramLimitExceeded
end

class PG::TooManyConnections < ::PG::InsufficientResources
end

class PG::TooManyRows < ::PG::PlpgsqlError
end

class PG::TransactionResolutionUnknown < ::PG::ConnectionException
end

class PG::TransactionRollback < ::PG::ServerError
end

class PG::TriggeredActionException < ::PG::ServerError
end

class PG::TriggeredDataChangeViolation < ::PG::ServerError
end

class PG::TrimError < ::PG::DataException
end

class PG::Tuple
  include(::Enumerable)

  def [](_); end
  def each; end
  def each_key(&block); end
  def each_value; end
  def fetch(*_); end
  def has_key?(key); end
  def index(_); end
  def inspect; end
  def key?(key); end
  def keys; end
  def length; end
  def size; end
  def values; end

  private

  def field_map; end
  def field_names; end
  def marshal_dump; end
  def marshal_load(_); end
end

class PG::TypeMap
end

module PG::TypeMap::DefaultTypeMappable
  def default_type_map; end
  def default_type_map=(_); end
  def with_default_type_map(_); end
end

class PG::TypeMapAllStrings < ::PG::TypeMap
end

class PG::TypeMapByClass < ::PG::TypeMap
  include(::PG::TypeMap::DefaultTypeMappable)

  def [](_); end
  def []=(_, _); end
  def coders; end
end

class PG::TypeMapByColumn < ::PG::TypeMap
  include(::PG::TypeMap::DefaultTypeMappable)

  def initialize(_); end

  def coders; end
  def inspect; end
  def oids; end
end

class PG::TypeMapByMriType < ::PG::TypeMap
  include(::PG::TypeMap::DefaultTypeMappable)

  def [](_); end
  def []=(_, _); end
  def coders; end
end

class PG::TypeMapByOid < ::PG::TypeMap
  include(::PG::TypeMap::DefaultTypeMappable)

  def add_coder(_); end
  def build_column_map(_); end
  def coders; end
  def max_rows_for_online_lookup; end
  def max_rows_for_online_lookup=(_); end
  def rm_coder(_, _); end
end

class PG::TypeMapInRuby < ::PG::TypeMap
  include(::PG::TypeMap::DefaultTypeMappable)

  def typecast_copy_get(_, _, _, _); end
  def typecast_query_param(_, _); end
  def typecast_result_value(_, _, _); end
end

class PG::UnableToSend < ::PG::Error
end

class PG::UndefinedColumn < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::UndefinedFile < ::PG::SystemError
end

class PG::UndefinedFunction < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::UndefinedObject < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::UndefinedParameter < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::UndefinedTable < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::UniqueViolation < ::PG::IntegrityConstraintViolation
end

class PG::UnterminatedCString < ::PG::DataException
end

class PG::UntranslatableCharacter < ::PG::DataException
end

PG::VERSION = T.let(T.unsafe(nil), String)

class PG::WindowingError < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::WithCheckOptionViolation < ::PG::ServerError
end

class PG::WrongObjectType < ::PG::SyntaxErrorOrAccessRuleViolation
end

class PG::ZeroLengthCharacterString < ::PG::DataException
end
