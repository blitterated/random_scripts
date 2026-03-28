require 'erb'
require 'ostruct'

foo = "bar"

class Hash
  def get_binding
    binding
  end
end

class OpenStruct
  def get_binding
    binding
  end
end

template1 = "foo: <%= foo %>"
template2 = "foo: <%= self[:foo] %>"

hash = {foo: 'baz'}

struct = OpenStruct.new
struct.foo = 'qux'

puts ERB.new(template1).result(binding)
puts ERB.new(template2).result(hash.get_binding)
puts ERB.new(template1).result(struct.get_binding)
