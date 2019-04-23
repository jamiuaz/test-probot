#
# Cookbook:: brafton-iis
# Spec:: default
#
# Copyright:: 2019, Brafton Inc.
#
# All rights reserved - Do Not Redistribute

require 'spec_helper'

describe 'brafton-iis::default' do
  context 'Windows 2012R2' do
    let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'windows', version: '2012R2').converge(described_recipe) }

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs baseline additional components' do
      expect(chef_run).to install_iis_install('install IIS').with(additional_components: [ 'IIS-HttpRedirect', 'IIS-HttpTracing', 'IIS-HttpCompressionDynamic', 'IIS-BasicAuthentication', 'IIS-DigestAuthentication', 'IIS-IPSecurity', 'NetFx4Extended-ASPNET45', 'IIS-NetFxExtensibility45', 'IIS-ASPNET45', 'IIS-ApplicationInit', 'IIS-WebSockets', 'IIS-ManagementScriptingTools', 'IIS-ManagementService' ])
    end

    it 'includes the default IIS recipe' do
      expect(chef_run).to include_recipe('iis::default')
    end

    it 'includes the remove default site IIS recipe' do
      expect(chef_run).to include_recipe('iis::remove_default_site')
    end
  end

  context 'Windows 2016' do
    let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'windows', version: '2016').converge(described_recipe) }

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs baseline additional components' do
      expect(chef_run).to install_iis_install('install IIS').with(additional_components: [ 'IIS-HttpRedirect', 'IIS-HttpTracing', 'IIS-HttpCompressionDynamic', 'IIS-BasicAuthentication', 'IIS-DigestAuthentication', 'IIS-IPSecurity', 'NetFx4Extended-ASPNET45', 'IIS-NetFxExtensibility45', 'IIS-ASPNET45', 'IIS-ApplicationInit', 'IIS-WebSockets', 'IIS-ManagementScriptingTools', 'IIS-ManagementService' ])
    end

    it 'includes the default IIS recipe' do
      expect(chef_run).to include_recipe('iis::default')
    end

    it 'includes the remove default site IIS recipe' do
      expect(chef_run).to include_recipe('iis::remove_default_site')
    end
  end

  context 'Windows 2019' do
    let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'windows', version: '2019').converge(described_recipe) }

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs baseline additional components' do
      expect(chef_run).to install_iis_install('install IIS').with(additional_components: [ 'IIS-HttpRedirect', 'IIS-HttpTracing', 'IIS-HttpCompressionDynamic', 'IIS-BasicAuthentication', 'IIS-DigestAuthentication', 'IIS-IPSecurity', 'NetFx4Extended-ASPNET45', 'IIS-NetFxExtensibility45', 'IIS-ASPNET45', 'IIS-ApplicationInit', 'IIS-WebSockets', 'IIS-ManagementScriptingTools', 'IIS-ManagementService' ])
    end

    it 'includes the default IIS recipe' do
      expect(chef_run).to include_recipe('iis::default')
    end

    it 'includes the remove default site IIS recipe' do
      expect(chef_run).to include_recipe('iis::remove_default_site')
    end
  end
end
