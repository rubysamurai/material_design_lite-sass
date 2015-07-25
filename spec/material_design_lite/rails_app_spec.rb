require 'spec_helper'

describe 'Rails app', rails: true do
  it 'adds stylesheet files' do
    expect(Rails.application.assets.find_asset('custom'))
      .to be_instance_of(Sprockets::Asset)
  end

  it 'adds javascript file' do
    expect(Rails.application.assets.find_asset('material'))
      .to be_instance_of(Sprockets::Asset)
  end
end
