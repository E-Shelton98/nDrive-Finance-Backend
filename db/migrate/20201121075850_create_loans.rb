class CreateLoans < ActiveRecord::Migration[6.0]
  def change
    create_table :loans do |t|
      t.string :borrower, null: false
      t.string :borrowerAddress, null: false
      t.string :borrowerPhone, null: false
      t.string :borrowerEmail, null: false
      t.string :coBorrower
      t.string :coBorrowerAddress
      t.string :coBorrowerPhone
      t.string :coBorrowerEmail
      t.integer :principal, null: false
      t.integer :apr, null: false
      t.integer :loanTerm, null: false
      t.integer :loanAmount, null: false
      t.string :vehicleMake, null: false
      t.string :vehicleModel, null: false
      t.integer :vehicleYear, null: false
      t.integer :vehicleMileage, null: false
      t.string :vehicleVin, null: false
      t.references :user, null: false, foreign_key: true
    end
  end
end
