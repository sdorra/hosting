require 'serverspec'
require 'spec_helper'

describe 'cadvisor image exists' do
  describe docker_image('google/cadvisor:v0.24.1') do
    it { should exist }
  end
end

describe 'cadvisor container is running' do
  describe docker_container('cadvisor') do
    it { should exist }
    it { should be_running }
  end
end
