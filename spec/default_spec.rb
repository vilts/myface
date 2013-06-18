require 'spec_helper'
 
# Replace USERNAME with your username!
describe 'USERNAME-myface::default' do
  let(:chef_run) do
    run = ChefSpec::ChefRunner.new(platform: 'ubuntu', version: '12.04')
    run.converge('vilts-myface::default')
  end
 
  it 'installs apache2' do
    expect(chef_run).to install_package('apache2')
  end
 
  it 'starts the apache2 service' do
    expect(chef_run).to start_service('apache2')
  end
  
  it 'sets apache2 to start on boot' do
    expect(chef_run).to set_service_to_start_on_boot 'apache2'
  end
end
