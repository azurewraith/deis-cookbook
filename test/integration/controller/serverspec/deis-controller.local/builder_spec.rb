require 'spec_helper'

describe port(2222) do
  it { should be_listening }
end
