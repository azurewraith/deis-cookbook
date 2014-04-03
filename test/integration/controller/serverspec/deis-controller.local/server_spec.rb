require 'spec_helper'

describe port(8000) do
  it { should be_listening }
end
