name = 'John'
proc = Proc.new do
  name = 'Mary'
end

proc.call
puts name
# => 'Mary'が出力される
