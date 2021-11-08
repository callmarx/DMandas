require 'rails_helper'

RSpec.describe "chores/edit", type: :view do
  before(:each) do
    @chore = assign(:chore, Chore.create!(
      title: "MyString",
      content: nil,
      user: nil
    ))
  end

  it "renders the edit chore form" do
    render

    assert_select "form[action=?][method=?]", chore_path(@chore), "post" do

      assert_select "input[name=?]", "chore[title]"

      assert_select "input[name=?]", "chore[content]"

      assert_select "input[name=?]", "chore[user_id]"
    end
  end
end
