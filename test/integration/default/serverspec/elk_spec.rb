require 'serverspec'
require 'spec_helper'

describe 'elasticsearch image exists' do
  describe docker_image('elasticsearch:5.1.1-alpine') do
    it { should exist }
  end
end

describe 'elasticsearch container is running' do
  describe docker_container('elasticsearch') do
    it { should exist }
    it { should be_running }
  end
end

describe 'kibana image exists' do
  describe docker_image('kibana:5.1.1') do
    it { should exist }
  end
end

describe 'kibana container is running' do
  describe docker_container('kibana') do
    it { should exist }
    it { should be_running }
  end
end

describe 'logstash image exists' do
  describe docker_image('logstash:5.1.1-alpine') do
    it { should exist }
  end
end

describe 'logstash container is running' do
  describe docker_container('logstash') do
    it { should exist }
    it { should be_running }
  end
end

describe 'gelf port should be open' do
  describe port(12201) do
    it { should be_listening }
  end
end
