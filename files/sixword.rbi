# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/sixword/all/sixword.rbi
#
# sixword-0.3.5
module Sixword
  def self.decode(string_or_words, options = nil); end
  def self.encode(byte_string); end
  def self.encode_iter(byte_string, options = nil); end
  def self.encode_to_a(byte_string); end
  def self.encode_to_s(byte_string); end
  def self.encode_to_sentences(byte_string); end
  def self.pad_decode(string_or_words); end
  def self.pad_encode(byte_string); end
  def self.pad_encode_to_a(byte_string); end
  def self.pad_encode_to_s(byte_string); end
  def self.pad_encode_to_sentences(byte_string); end
end
class Sixword::CLI
  def accumulate_hex_input; end
  def do_decode!; end
  def do_encode!; end
  def encoding?; end
  def filename; end
  def hex_style; end
  def initialize(filename, options); end
  def mode; end
  def options; end
  def pad?; end
  def print_hex(data, chunk_index, cols = nil); end
  def process_encode_input; end
  def read_input_by_6_words; end
  def run!; end
  def stream; end
end
class Sixword::CLI::CLIError < StandardError
end
module Sixword::Hex
  def self.decode(hex_string, strip_chars = nil); end
  def self.encode(bytes); end
  def self.encode_colons(bytes); end
  def self.encode_fingerprint(bytes); end
  def self.encode_slice(bytes, slice, delimiter); end
  def self.strip_char?(char); end
  def self.valid_hex?(string); end
end
module Sixword::Lib
  def self.byte_array_to_int(byte_array); end
  def self.decode_6_words(word_array, padding_ok); end
  def self.decode_6_words_to_bstring(word_array, padding_ok); end
  def self.encode_64_bits(byte_array); end
  def self.extract_padding(word); end
  def self.int_to_byte_array(int, length = nil); end
  def self.parity_array(byte_array); end
  def self.parity_int(int); end
  def self.word_to_bits(word); end
end
class Sixword::InputError < ArgumentError
end
class Sixword::InvalidParity < Sixword::InputError
end
class Sixword::UnknownWord < Sixword::InputError
end
class Sixword::InvalidWord < Sixword::InputError
end
