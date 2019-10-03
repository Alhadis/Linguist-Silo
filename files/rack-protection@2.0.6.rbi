# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   tapioca generate

# typed: true

module Rack
  def self.release; end
  def self.version; end
end

Rack::CACHE_CONTROL = T.let(T.unsafe(nil), String)

Rack::CONTENT_LENGTH = T.let(T.unsafe(nil), String)

Rack::CONTENT_TYPE = T.let(T.unsafe(nil), String)

Rack::DELETE = T.let(T.unsafe(nil), String)

Rack::ETAG = T.let(T.unsafe(nil), String)

Rack::GET = T.let(T.unsafe(nil), String)

Rack::HEAD = T.let(T.unsafe(nil), String)

Rack::HTTPS = T.let(T.unsafe(nil), String)

Rack::HTTP_COOKIE = T.let(T.unsafe(nil), String)

Rack::HTTP_HOST = T.let(T.unsafe(nil), String)

Rack::HTTP_VERSION = T.let(T.unsafe(nil), String)

Rack::LINK = T.let(T.unsafe(nil), String)

Rack::OPTIONS = T.let(T.unsafe(nil), String)

Rack::PATCH = T.let(T.unsafe(nil), String)

Rack::PATH_INFO = T.let(T.unsafe(nil), String)

Rack::POST = T.let(T.unsafe(nil), String)

Rack::PUT = T.let(T.unsafe(nil), String)

module Rack::Protection
  def self.new(app, options = _); end
end

class Rack::Protection::AuthenticityToken < ::Rack::Protection::Base
  def accepts?(env); end
  def default_options; end
  def mask_authenticity_token(session); end

  private

  def compare_with_real_token(token, session); end
  def decode_token(token); end
  def encode_token(token); end
  def mask_token(token); end
  def masked_token?(token); end
  def real_token(session); end
  def set_token(session); end
  def unmask_token(masked_token); end
  def unmasked_token?(token); end
  def valid_token?(session, token); end
  def xor_byte_strings(s1, s2); end

  def self.random_token; end
  def self.token(session); end
end

Rack::Protection::AuthenticityToken::TOKEN_LENGTH = T.let(T.unsafe(nil), Integer)

class Rack::Protection::Base
  def initialize(app, options = _); end

  def accepts?(env); end
  def app; end
  def call(env); end
  def default_options; end
  def default_reaction(env); end
  def deny(env); end
  def drop_session(env); end
  def encrypt(value); end
  def html?(headers); end
  def instrument(env); end
  def options; end
  def origin(env); end
  def random_string(secure = _); end
  def react(env); end
  def referrer(env); end
  def report(env); end
  def safe?(env); end
  def secure_compare(a, b); end
  def session(env); end
  def session?(env); end
  def warn(env, message); end

  def self.default_options(options); end
  def self.default_reaction(reaction); end
end

Rack::Protection::Base::DEFAULT_OPTIONS = T.let(T.unsafe(nil), Hash)

class Rack::Protection::ContentSecurityPolicy < ::Rack::Protection::Base
  def call(env); end
  def csp_policy; end
  def default_options; end
end

Rack::Protection::ContentSecurityPolicy::DIRECTIVES = T.let(T.unsafe(nil), Array)

Rack::Protection::ContentSecurityPolicy::NO_ARG_DIRECTIVES = T.let(T.unsafe(nil), Array)

class Rack::Protection::CookieTossing < ::Rack::Protection::Base
  def accepts?(env); end
  def bad_cookies; end
  def call(env); end
  def cookie_paths(path); end
  def default_reaction(env); end
  def empty_cookie(host, path); end
  def redirect(env); end
  def remove_bad_cookies(request, response); end
  def session_key; end
end

class Rack::Protection::EscapedParams < ::Rack::Protection::Base
  extend(::Rack::Utils)

  def initialize(*_); end

  def call(env); end
  def default_options; end
  def escape(object); end
  def escape_hash(hash); end
  def escape_string(str); end
  def handle(hash); end
end

class Rack::Protection::FormToken < ::Rack::Protection::AuthenticityToken
  def accepts?(env); end
end

class Rack::Protection::FrameOptions < ::Rack::Protection::Base
  def call(env); end
  def default_options; end
  def frame_options; end
end

class Rack::Protection::HttpOrigin < ::Rack::Protection::Base
  def accepts?(env); end
  def base_url(env); end
  def default_options; end
  def default_reaction(env); end
end

Rack::Protection::HttpOrigin::DEFAULT_PORTS = T.let(T.unsafe(nil), Hash)

class Rack::Protection::IPSpoofing < ::Rack::Protection::Base
  def accepts?(env); end
  def default_reaction(env); end
end

class Rack::Protection::JsonCsrf < ::Rack::Protection::Base
  def call(env); end
  def close_body(body); end
  def default_options; end
  def has_vector?(request, headers); end
  def react(env); end
  def react_and_close(env, body); end
end

class Rack::Protection::PathTraversal < ::Rack::Protection::Base
  def call(env); end
  def cleanup(path); end
end

class Rack::Protection::RemoteReferrer < ::Rack::Protection::Base
  def accepts?(env); end
  def default_reaction(env); end
end

class Rack::Protection::RemoteToken < ::Rack::Protection::AuthenticityToken
  def accepts?(env); end
  def default_reaction(env); end
end

class Rack::Protection::SessionHijacking < ::Rack::Protection::Base
  def accepts?(env); end
  def default_options; end
  def default_reaction(env); end
  def encrypt(value); end
end

class Rack::Protection::StrictTransport < ::Rack::Protection::Base
  def call(env); end
  def default_options; end
  def strict_transport; end
end

Rack::Protection::VERSION = T.let(T.unsafe(nil), String)

class Rack::Protection::XSSHeader < ::Rack::Protection::Base
  def call(env); end
  def default_options; end
end

Rack::QUERY_STRING = T.let(T.unsafe(nil), String)

Rack::RACK_ERRORS = T.let(T.unsafe(nil), String)

Rack::RACK_HIJACK = T.let(T.unsafe(nil), String)

Rack::RACK_HIJACK_IO = T.let(T.unsafe(nil), String)

Rack::RACK_INPUT = T.let(T.unsafe(nil), String)

Rack::RACK_IS_HIJACK = T.let(T.unsafe(nil), String)

Rack::RACK_LOGGER = T.let(T.unsafe(nil), String)

Rack::RACK_METHODOVERRIDE_ORIGINAL_METHOD = T.let(T.unsafe(nil), String)

Rack::RACK_MULTIPART_BUFFER_SIZE = T.let(T.unsafe(nil), String)

Rack::RACK_MULTIPART_TEMPFILE_FACTORY = T.let(T.unsafe(nil), String)

Rack::RACK_MULTIPROCESS = T.let(T.unsafe(nil), String)

Rack::RACK_MULTITHREAD = T.let(T.unsafe(nil), String)

Rack::RACK_RECURSIVE_INCLUDE = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_COOKIE_HASH = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_COOKIE_STRING = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_FORM_HASH = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_FORM_INPUT = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_FORM_VARS = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_QUERY_HASH = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_QUERY_STRING = T.let(T.unsafe(nil), String)

Rack::RACK_RUNONCE = T.let(T.unsafe(nil), String)

Rack::RACK_SESSION = T.let(T.unsafe(nil), String)

Rack::RACK_SESSION_OPTIONS = T.let(T.unsafe(nil), String)

Rack::RACK_SESSION_UNPACKED_COOKIE_DATA = T.let(T.unsafe(nil), String)

Rack::RACK_SHOWSTATUS_DETAIL = T.let(T.unsafe(nil), String)

Rack::RACK_TEMPFILES = T.let(T.unsafe(nil), String)

Rack::RACK_URL_SCHEME = T.let(T.unsafe(nil), String)

Rack::RACK_VERSION = T.let(T.unsafe(nil), String)

Rack::RELEASE = T.let(T.unsafe(nil), String)

Rack::REQUEST_METHOD = T.let(T.unsafe(nil), String)

Rack::REQUEST_PATH = T.let(T.unsafe(nil), String)

Rack::SCRIPT_NAME = T.let(T.unsafe(nil), String)

Rack::SERVER_ADDR = T.let(T.unsafe(nil), String)

Rack::SERVER_NAME = T.let(T.unsafe(nil), String)

Rack::SERVER_PORT = T.let(T.unsafe(nil), String)

Rack::SERVER_PROTOCOL = T.let(T.unsafe(nil), String)

Rack::SET_COOKIE = T.let(T.unsafe(nil), String)

Rack::TRACE = T.let(T.unsafe(nil), String)

Rack::TRANSFER_ENCODING = T.let(T.unsafe(nil), String)

Rack::UNLINK = T.let(T.unsafe(nil), String)

Rack::VERSION = T.let(T.unsafe(nil), Array)
