class CreateUserlogins < ActiveRecord::Migration[5.2]
  def change
    create_table :userlogins do |t|
      t.date :start_date
      t.date :end_date
      t.string :remote_ip
      t.timestamps # times & dates of creations
      t.references  :user, foreign_key: true # foreign key from user model
    end
  end
end

# user id DONE
# date DONE
# remote.ip DONE

# user has many logins DONE
# login belongs to user DONE
