describe RSpec::EveryItem do
  describe "#every_item" do
    include RSpec::EveryItem::MethodSyntax

    context "When build-in matcher" do
      describe "to every_item" do
        let(:names) do
          %w(
            cure_happy
            cure_sunny
            cure_peace
            cure_march
            cure_beauty
          )
        end

        it { expect(names).to every_item( start_with("cure_") ) }
      end

      context "not_to every_item" do
        let(:names) do
          %w(
            cure_black
            cure_white
            shiny_luminous
          )
        end

        it { expect(names).not_to every_item( start_with("cure_") ) }
      end
    end

    context "When custom matcher" do
      RSpec::Matchers.define :even_number do
        match do |actual|
          actual % 2 == 0
        end
      end

      describe "to every_item" do
        let(:numbers) { [0, 2, 4, 6, 8] }

        it { expect(numbers).to every_item( even_number ) }
      end

      context "not_to every_item" do
        let(:numbers) { [0, 2, 4, 6, 7, 8] }

        it { expect(numbers).not_to every_item( even_number ) }
      end
    end
  end
end
