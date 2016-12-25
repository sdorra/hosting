require 'serverspec'
require 'spec_helper'

describe 'node-exporter image exists' do
  describe docker_image('quay.io/prometheus/node-exporter:v0.13.0') do
    it { should exist }
  end
end

describe 'node-exporter container is running' do
  describe docker_container('node-exporter') do
    it { should exist }
    it { should be_running }
  end
end

describe 'prometheus image exists' do
  describe docker_image('prom/prometheus:v1.4.1') do
    it { should exist }
  end
end

describe 'prometheus container is running' do
  describe docker_container('prometheus') do
    it { should exist }
    it { should be_running }
  end
end

