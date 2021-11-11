# frozen_string_literal: true

class Chore < ApplicationRecord
  belongs_to :user
  has_rich_text :content

  after_create_commit :insert_chore_view
  after_update_commit :update_chore_view
  after_destroy_commit :remove_chore_view

  private
    def insert_chore_view
      broadcast_append_to(
        "chores",
        target: "chores",
        partial: "chores/chore",
        locals: { chore: self }
      )
    end

    def update_chore_view
      broadcast_replace_to(
        "chores",
        target: ActionView::RecordIdentifier.dom_id(self),
        partial: "chores/chore",
        locals: { chore: self }
      )
    end

    def remove_chore_view
      broadcast_remove_to(
        "chores",
        target: ActionView::RecordIdentifier.dom_id(self)
      )
    end
end
