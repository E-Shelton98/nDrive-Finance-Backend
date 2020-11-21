module Api 
  module V1
    class LoansController < ApplicationController
      before_action :authorize_access_request! 
      before_action :set_loan, only: [:show, :update, :destroy]

      # GET /loans
      def index
      @loans = current_user.loans.all

      render json: @loans
      end

      # GET /loans/1
      def show
      render json: @loan
      end

      # POST /loans
      def create
      @loan = current_user.records.build(loan_params)

        if @loan.save
        render json: @loan, status: :created, location: @loan
        else
        render json: @loan.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /loans/1
      def update
        if @loan.update(loan_params)
          render json: @loan
        else
          render json: @loan.errors, status: :unprocessable_entity
        end
      end

      # DELETE /loans/1
      def destroy
      @loan.destroy
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_loan
      @loan = current_user.records.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def loan_params
        params.require(:loan).permit(:borrower, :borrower-id, :borrower-address, :coborrower, :coborrower-id, :coborrower-address, :principal, :apr, :loan-term, :loan-amount, :vehicle-make, :vehicle-model, :vehicle-year, :vehicle-mileage, :vehicle-vin, :user_id)
      end
    end
  end
end
