describe "Example 1" do
  context "Not Using rspec-every_item" do
    it "should start with 'cure_'" do
      precure_names = %w(cure_happy cure_sunny cure_peace cure_march cure_beauty)

      precure_names.each do |name|
        expect(name).to start_with "cure_"
      end
    end
  end

  context "Using rspec-every_item" do
    it "should start with 'cure_'" do
      precure_names = %w(cure_happy cure_sunny cure_peace cure_march cure_beauty)

      expect(precure_names).to every_item start_with "cure_"
      # same to
      # expect(precure_names).to every_item(start_with("cure_"))
    end
  end
end

describe "Example 2" do
  def precure_names
    %w(cure_happy cure_sunny cure_peace cure_march cure_beauty)
  end

  subject{ precure_names }

  context "Not Using rspec-every_item" do
    its([0]){ should start_with "cure_" }
    its([1]){ should start_with "cure_" }
    its([2]){ should start_with "cure_" }
    its([3]){ should start_with "cure_" }
    its([4]){ should start_with "cure_" }
  end

  context "Using rspec-every_item" do
    it{ should every_item start_with "cure_" }
    # same to
    # it{ should every_item(start_with("cure_")) }
  end
end

