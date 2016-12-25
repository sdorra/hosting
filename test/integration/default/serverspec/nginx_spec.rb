require 'serverspec'
require 'spec_helper'

describe 'nginx image exists' do
  describe docker_image('lebinh/nginx-lua:debian-stock') do
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
