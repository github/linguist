#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.7
# from Racc grammar file "".
#

require 'racc/parser.rb'
module RJSON
  class Parser < Racc::Parser


  require 'rjson/handler'

  attr_reader :handler

  def initialize tokenizer, handler = Handler.new
    @tokenizer = tokenizer
    @handler   = handler
    super()
  end

  def next_token
    @tokenizer.next_token
  end

  def parse
    do_parse
    handler
  end
##### State transition tables begin ###

racc_action_table = [
     9,    33,     9,    11,    13,    16,    19,    22,     9,     7,
    23,     1,     9,    11,    13,    16,    19,    29,    30,     7,
    21,     1,     9,    11,    13,    16,    19,    31,   nil,     7,
    21,     1,    23,     7,   nil,     1 ]

racc_action_check = [
     6,    27,    33,    33,    33,    33,    33,     3,    31,    33,
     6,    33,    29,    29,    29,    29,    29,    12,    22,    29,
    12,    29,     2,     2,     2,     2,     2,    25,   nil,     2,
     2,     2,    25,     0,   nil,     0 ]

racc_action_pointer = [
    24,   nil,    20,     7,   nil,   nil,    -2,   nil,   nil,   nil,
   nil,   nil,    10,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    18,   nil,   nil,    20,   nil,    -7,   nil,    10,
   nil,     6,   nil,     0,   nil,   nil,   nil ]

racc_action_default = [
   -27,   -12,   -21,   -27,    -1,    -2,   -27,   -10,   -15,   -26,
    -8,   -22,   -27,   -23,   -17,   -16,   -24,   -20,   -18,   -25,
   -19,   -11,   -27,   -13,    -3,   -27,    -6,   -27,    -9,   -21,
    37,   -27,    -4,   -21,   -14,    -5,    -7 ]

racc_goto_table = [
     8,    26,    24,    27,    10,     3,    25,     5,     4,    12,
   nil,   nil,   nil,   nil,    28,   nil,   nil,   nil,   nil,   nil,
   nil,    32,   nil,   nil,   nil,   nil,    35,    34,    27,   nil,
   nil,    36 ]

racc_goto_check = [
     9,     7,     5,     8,    11,     1,     6,     3,     2,    12,
   nil,   nil,   nil,   nil,    11,   nil,   nil,   nil,   nil,   nil,
   nil,     5,   nil,   nil,   nil,   nil,     7,     9,     8,   nil,
   nil,     9 ]

racc_goto_pointer = [
   nil,     5,     8,     7,   nil,    -4,     0,    -5,    -3,    -2,
   nil,     2,     7,   nil,   nil ]

racc_goto_default = [
   nil,   nil,    14,    18,     6,   nil,   nil,   nil,    20,   nil,
     2,   nil,   nil,    15,    17 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 14, :_reduce_none,
  1, 14, :_reduce_none,
  2, 15, :_reduce_none,
  3, 15, :_reduce_none,
  3, 19, :_reduce_none,
  1, 19, :_reduce_none,
  3, 20, :_reduce_none,
  2, 16, :_reduce_none,
  3, 16, :_reduce_none,
  1, 23, :_reduce_10,
  1, 24, :_reduce_11,
  1, 17, :_reduce_12,
  1, 18, :_reduce_13,
  3, 25, :_reduce_none,
  1, 25, :_reduce_none,
  1, 22, :_reduce_none,
  1, 22, :_reduce_none,
  1, 22, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_20,
  0, 27, :_reduce_none,
  1, 27, :_reduce_22,
  1, 27, :_reduce_23,
  1, 27, :_reduce_24,
  1, 27, :_reduce_25,
  1, 21, :_reduce_26 ]

racc_reduce_n = 27

racc_shift_n = 37

racc_token_table = {
  false => 0,
  :error => 1,
  :STRING => 2,
  :NUMBER => 3,
  :TRUE => 4,
  :FALSE => 5,
  :NULL => 6,
  "," => 7,
  ":" => 8,
  "[" => 9,
  "]" => 10,
  "{" => 11,
  "}" => 12 }

racc_nt_base = 13

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "STRING",
  "NUMBER",
  "TRUE",
  "FALSE",
  "NULL",
  "\",\"",
  "\":\"",
  "\"[\"",
  "\"]\"",
  "\"{\"",
  "\"}\"",
  "$start",
  "document",
  "object",
  "array",
  "start_object",
  "end_object",
  "pairs",
  "pair",
  "string",
  "value",
  "start_array",
  "end_array",
  "values",
  "scalar",
  "literal" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

# reduce 2 omitted

# reduce 3 omitted

# reduce 4 omitted

# reduce 5 omitted

# reduce 6 omitted

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

def _reduce_10(val, _values, result)
 @handler.start_array  
    result
end

def _reduce_11(val, _values, result)
 @handler.end_array    
    result
end

def _reduce_12(val, _values, result)
 @handler.start_object 
    result
end

def _reduce_13(val, _values, result)
 @handler.end_object   
    result
end

# reduce 14 omitted

# reduce 15 omitted

# reduce 16 omitted

# reduce 17 omitted

# reduce 18 omitted

# reduce 19 omitted

def _reduce_20(val, _values, result)
 @handler.scalar val[0] 
    result
end

# reduce 21 omitted

def _reduce_22(val, _values, result)
 n = val[0]; result = n.count('.') > 0 ? n.to_f : n.to_i 
    result
end

def _reduce_23(val, _values, result)
 result = true 
    result
end

def _reduce_24(val, _values, result)
 result = false 
    result
end

def _reduce_25(val, _values, result)
 result = nil 
    result
end

def _reduce_26(val, _values, result)
 @handler.scalar val[0].gsub(/^"|"$/, '') 
    result
end

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module RJSON
