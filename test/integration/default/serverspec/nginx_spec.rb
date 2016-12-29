require 'serverspec'
require 'spec_helper'

describe 'jasas image exists' do
  describe docker_image('sdorra/jasas:0.1.0') do
    it { should exist }
  end
end

describe 'jasas container is running' do
  describe docker_container('auth') do
    it { should exist }
    it { should be_running }
  end
end

describe 'nginx image exists' do
  describe docker_image('sdorra/nginx:1.11.8') do
    it { should exist }
  end
end

describe 'nginx container is running' do
  describe docker_container('nginx') do
    it { should exist }
    it { should be_running }
  end
end

describe 'ports should be open' do
  describe port(80) do
    it { should be_listening }
  end
  describe port(443) do
    it { should be_listening }
  end
end
