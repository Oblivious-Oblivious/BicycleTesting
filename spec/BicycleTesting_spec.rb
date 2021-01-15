# frozen_string_literal: true

RSpec.describe BicycleTesting do
    it "has a version number" do
        expect(BicycleTesting::VERSION).not_to be nil;
    end
end
