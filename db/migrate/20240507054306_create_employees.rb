class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :f_name
      t.string :m_name
      t.string :surname

      t.timestamps
    end
  end
end
