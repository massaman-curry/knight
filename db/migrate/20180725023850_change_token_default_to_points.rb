class ChangeTokenDefaultToPoints < ActiveRecord::Migration[5.1]
  def change
  	change_column_default :points, :token, 5
  end
end
