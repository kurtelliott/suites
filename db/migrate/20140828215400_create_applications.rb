class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :emailConfirm
      t.integer :cell
      t.integer :home
      t.integer :work
      t.string :prefferedContact
      t.string :location
      t.string :loanType
      t.integer :mortgageAmnt
      t.string :livingStatus
      t.integer :numberApplicants
      t.string :source
      t.boolean :agreeTerms
      t.string :address
      t.string :city
      t.string :province
      t.string :postalCode
      t.string :title
      t.string :employer
      t.string :empAddress
      t.string :empCity
      t.string :empProvince
      t.string :empLength
      t.string :incomeType
      t.string :incomeAnnual
      t.string :otherIncome
      t.string :totalIncome
      t.boolean :mortSame
      t.string :mortCity
      t.string :mortAddress
      t.string :mortPostalcode
      t.string :mortProvince
      t.integer :currentMortgage
      t.string :currentLender
      t.string :paymentType
      t.integer :payment
      t.string :mortType
      t.string :rate
      t.integer :rrsp
      t.integer :nonrrsp
      t.string :otherAssets
      t.string :notes

      t.timestamps
    end
  end
end
