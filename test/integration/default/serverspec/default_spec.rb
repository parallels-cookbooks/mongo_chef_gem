require 'spec_helper'

describe command('/opt/chef/embedded/bin/gem list mongo') do
  its(:stdout) { should contain('2.1.2') }
end

describe command('/opt/chef/embedded/bin/gem list bson_ext') do
  its(:stdout) { should contain('1.12.4') }
end
