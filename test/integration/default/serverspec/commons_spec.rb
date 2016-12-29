require 'serverspec'
require 'spec_helper'

describe 'OpenSSH server package' do
  describe package('openssh-server') do
    it { should be_installed }
  end
end

describe 'UFW package' do
  describe package('openssh-server') do
    it { should be_installed }
  end
end

describe 'ntp package' do
  describe package('ntp') do
    it { should be_installed }
  end
end

describe 'OpenSSH daemon is running' do
  describe service('ssh') do
    it { should be_enabled }
    it { should be_running }
  end
end

describe 'UFW is running' do
  describe service('ufw') do
    it { should be_enabled }
    it { should be_running }
  end
end

describe 'ntp is running' do
  describe service('ntp') do
    it { should be_enabled }
    it { should be_running }
  end
end
