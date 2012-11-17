require 'spec_helper'

describe Git::Command do
  it "is a module" do
    Git::Command.should be_instance_of(Module)
  end
end
