require_relative '../lib/multiples.rb'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    # je te laisse écrire ces tests-là
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
    expect(is_multiple_of_3_or_5?(64)).to eq(false)
    expect(is_multiple_of_3_or_5?(2)).to eq(false)
  end
end

describe "sum of 3 or 5 multiples" do
  it "should return a result (even 0)" do
    expect(sum_of_3_or_5_multiples(0)).to eq(0)
    expect(sum_of_3_or_5_multiples(3)).to eq(0)
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
  end

  it "should refuse the entry of negatives, strings and floats" do
    expect(sum_of_3_or_5_multiples(-1)).to eq("Yo ! Je ne prends que les entiers naturels. TG.")
    expect(sum_of_3_or_5_multiples(1.23)).to eq("Yo ! Je ne prends que les entiers naturels. TG.")
    expect(sum_of_3_or_5_multiples("string")).to eq("Yo ! Je ne prends que les entiers naturels. TG.")
  end
end


# --- Ancienne méthode ---

#   describe "sum of 3 or 5 multiples" do
#
#     it "gives the sum of 3 or 5 multiples " do
#       expect(sum_of_3_or_5_multiples(11).to eq(33)
#     end
#
#     it "gives the sum of 3 or 5 multiples " do
#       expect(sum_of_3_or_5_multiples(10).to eq(23)
#     end
#
#     it "gives the sum of 3 or 5 multiples " do
#       expect(sum_of_3_or_5_multiples(-1, 1.23, "string").to eq("Yo ! Je ne prends que les entiers naturels. TG.")
#     end
#
#     it "gives the sum of 3 or 5 multiples " do
#       expect(sum_of_3_or_5_multiples(3, 0).to eq(0)
#     end
#
# end
#
#
#
# describe "is multiple of 3 or 5?" do
#
#     it "selects the multiples of 3 or 5 in the list" do
#       expect(is_multiple_of_3_or_5?(3, 5).to eq("true")
#     end
#
#     it "selects the multiples of 3 or 5 in the list" do
#       expect(is_multiple_of_3_or_5?(51, 45).to eq("true")
#     end
#
#     it "selects the multiples of 3 or 5 in the list" do
#       expect(is_multiple_of_3_or_5?(2, 7, 64).to eq("false")
