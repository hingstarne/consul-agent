require "serverspec"

set :backend, :cmd
set :os, :family => 'windows'

describe "Program Files" do
  describe file("#{ENV['ProgramFiles']}/HashiCorp/Consul/") do
    it { should be_directory }
  end

  describe file("#{ENV['ProgramFiles']}/HashiCorp/Consul/consul-agent/consul.exe") do
    it { should exist }
  end

  describe file("#{ENV['ProgramFiles']}/HashiCorp/Consul/consul-agent/nssm.exe") do
    it { should exist }
  end
end
