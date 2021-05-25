class CreateJobposters < ActiveRecord::Migration[6.1]
  def change
    create_table :jobposters do |t|
      t.string :first_name
      t.string :last_name
      t.string :job_nature
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
