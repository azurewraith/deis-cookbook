require 'spec_helper'

describe port(514) do
  it { should be_listening }
end
