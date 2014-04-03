require 'spec_helper'

describe port(4001) do
  it { should be_listening }
end

describe port(7001) do
  it { should be_listening }
end
