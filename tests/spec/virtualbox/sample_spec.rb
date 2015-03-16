require 'spec_helper'

describe service('blackfire-agent') do
  it { should be_enabled }
  it { should be_running }
end

%w{
  /etc/blackfire/
}.each do |f|
  describe file(f) do
    it { should be_directory }
  end
end

%w{
  /etc/blackfire/agent
}.each do |f|
  describe file(f) do
    it { should be_file }
  end
end

describe file('/var/run/blackfire/agent.sock') do
  it { should be_socket }
end
