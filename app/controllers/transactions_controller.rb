class TransactionsController < ApplicationController
  before_action :set_transaction, only: %i[show edit update destroy]

  # GET /transactions or /transactions.json
  def index
    @transactions = Transaction.all
  end

  # GET /transactions/1 or /transactions/1.json
  def show; end

  # GET /transactions/new
  def new
    @transaction = Transaction.new
    @category = Category.where(author_id: current_user.id)
  end

  # GET /transactions/1/edit
  def edit; end

  # POST /transactions or /transactions.json
  def create
    transaction = Transaction.new(transaction_params)

    if transaction.save
      redirect_to category_url(transaction.category), notice: 'Transaction was successfully created.'

    else
      redirect_to category_url(transaction.category), notice: 'Failed to create new transaction!'
    end
  end

  # PATCH/PUT /transactions/1 or /transactions/1.json
  def update; end

  # DELETE /transactions/1 or /transactions/1.json
  def destroy
    transaction = Transaction.find(params[:id])

    if transaction.destroy!
      redirect_to categories_url, notice: 'Transaction was successfully deleted.'
    else
      redirect_to categories_url, notice: 'Faile to delete transaction.'
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def transaction_params
    transaction = params.require(:transaction).permit(:name, :amount, :category_id)
    transaction[:user_id] = current_user.id
    transaction
  end
end
