require 'test_helper'

class LoansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loan = loans(:one)
  end

  test "should get index" do
    get loans_url, as: :json
    assert_response :success
  end

  test "should create loan" do
    assert_difference('Loan.count') do
      post loans_url, params: { loan: { apr: @loan.apr, borrower: @loan.borrower, borrower-address: @loan.borrower-address, borrower-id: @loan.borrower-id, coborrower: @loan.coborrower, coborrower-address: @loan.coborrower-address, coborrower-id: @loan.coborrower-id, loan-amount: @loan.loan-amount, loan-term: @loan.loan-term, principal: @loan.principal, user_id: @loan.user_id, vehicle-make: @loan.vehicle-make, vehicle-mileage: @loan.vehicle-mileage, vehicle-model: @loan.vehicle-model, vehicle-vin: @loan.vehicle-vin, vehicle-year: @loan.vehicle-year } }, as: :json
    end

    assert_response 201
  end

  test "should show loan" do
    get loan_url(@loan), as: :json
    assert_response :success
  end

  test "should update loan" do
    patch loan_url(@loan), params: { loan: { apr: @loan.apr, borrower: @loan.borrower, borrower-address: @loan.borrower-address, borrower-id: @loan.borrower-id, coborrower: @loan.coborrower, coborrower-address: @loan.coborrower-address, coborrower-id: @loan.coborrower-id, loan-amount: @loan.loan-amount, loan-term: @loan.loan-term, principal: @loan.principal, user_id: @loan.user_id, vehicle-make: @loan.vehicle-make, vehicle-mileage: @loan.vehicle-mileage, vehicle-model: @loan.vehicle-model, vehicle-vin: @loan.vehicle-vin, vehicle-year: @loan.vehicle-year } }, as: :json
    assert_response 200
  end

  test "should destroy loan" do
    assert_difference('Loan.count', -1) do
      delete loan_url(@loan), as: :json
    end

    assert_response 204
  end
end
