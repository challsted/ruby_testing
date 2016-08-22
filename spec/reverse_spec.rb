require "spec_helper"
require "reverse"

describe "Reverse_string" do

  before do
    @string = Reverse_String.new()
  end

  describe ".reverse" do
    it "takes input from the user and reverses its contents" do
      expect(@string.reverse("test").to be("tset"))
      #expect(@string.reverse("test string").to be("gnirts tset"))
      #expect(@string.reverse("").to be("You didnt enter anything!\nExiting now."))
    end
  end
end
