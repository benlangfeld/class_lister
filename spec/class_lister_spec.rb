require 'spec_helper'

describe ClassLister do
  module TestModule
    VERSION = :foo

    class A
      class C; end

      module D
        class E; end
      end
    end

    module B
      class F; end
    end

    module G; end
  end

  describe "#list" do
    it "should list all classes within the specified namespace" do
      described_class.list(TestModule).should be == [
        TestModule::A,
        TestModule::A::C,
        TestModule::A::D::E,
        TestModule::B::F
      ]
    end
  end
end
