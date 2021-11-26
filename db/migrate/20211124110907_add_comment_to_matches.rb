class AddCommentToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :comment, :text
  end
end
