require 'yaml'
require 'pp'
data = YAML.load_file('legislator_data.yml')
len = data.length
(0..len).each do |i|
  p '**********************'
  if data[i]["social"] == nil || data[i]["social"]["twitter"] == nil
    p 'none'
  else
    p "@" + data[i]["social"]["twitter"]
  end
end
