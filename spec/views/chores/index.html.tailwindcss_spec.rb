require 'rails_helper'

RSpec.describe "chores/index", type: :view do
  before(:each) do
    assign(:chores, [
      Chore.create!(
        title: "Title",
        content: nil,
        user: nil
      ),
      Chore.create!(
        title: "Title",
        content: nil,
        user: nil
      )
    ])
  end

  it "renders a list of chores" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
