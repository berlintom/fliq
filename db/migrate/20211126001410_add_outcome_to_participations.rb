class AddOutcomeToParticipations < ActiveRecord::Migration[6.0]
  def change
    add_column :participations, :outcome, :string, default: "unplayed"
  end
end
