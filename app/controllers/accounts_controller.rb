class AccountsController < ApplicationController
  before_action :require_admin

  def index
    @accounts = Account.all
  end

end