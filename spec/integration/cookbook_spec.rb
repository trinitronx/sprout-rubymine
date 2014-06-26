require 'spec_helper'

describe 'sprout-rubymine' do
  before :all do
    expect(Dir.exist?('/Applications/RubyMine.app')).to eq(false)
    expect(system('soloist')).to eq(true)
  end

  it 'installs rubymine' do
    expect(Dir.exist?('/Applications/RubyMine.app')).to eq(true)
  end
end
