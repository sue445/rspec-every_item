describe Rspec::EveryItem do
  describe "#every_item" do
    include Rspec::EveryItem::MethodSyntax

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
  end
end
