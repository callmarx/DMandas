require 'rails_helper'

RSpec.describe "chores/show", type: :view do
  before(:each) do
    @chore = assign(:chore, Chore.create!(
      title: "Title",
      content: nil,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
