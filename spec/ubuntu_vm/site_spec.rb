require 'spec_helper'


describe 'Vagrant Image Tests' do
  describe user('vagrant') do
    it { should exist }
    it { should belong_to_group 'vagrant' }
  end
end

describe docker_image('gc/nginx-web-app') do
  it { should exist }
end

describe docker_container('nginx-web-app') do
  it { should exist }
end

describe docker_container('nginx-web-app') do
  it { should be_running }
end


describe port(8082) do
  it { should be_listening }
end
