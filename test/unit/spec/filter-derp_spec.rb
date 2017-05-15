# frozen_string_literal: true
require 'chefspec'
require_relative 'spec_helper'

describe 'repose::filter-derp' do
  before { stub_resources }

  let(:chef_run) { ChefSpec::SoloRunner.new.converge('repose::default', described_recipe) }

  it 'includes the recipe repose::install' do
    expect(chef_run).to include_recipe('repose::install')
  end
end
