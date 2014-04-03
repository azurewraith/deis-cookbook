require 'spec_helper'

describe port(5000) do
  it { should be_listening }
end
