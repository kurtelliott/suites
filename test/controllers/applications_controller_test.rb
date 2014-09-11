require 'test_helper'

class ApplicationsControllerTest < ActionController::TestCase
  setup do
    @application = applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create application" do
    assert_difference('Application.count') do
      post :create, application: { address: @application.address, agreeTerms: @application.agreeTerms, cell: @application.cell, city: @application.city, currentLender: @application.currentLender, currentMortgage: @application.currentMortgage, email: @application.email, emailConfirm: @application.emailConfirm, empAddress: @application.empAddress, empCity: @application.empCity, empLength: @application.empLength, empProvince: @application.empProvince, employer: @application.employer, firstName: @application.firstName, home: @application.home, incomeAnnual: @application.incomeAnnual, incomeType: @application.incomeType, lastName: @application.lastName, livingStatus: @application.livingStatus, loanType: @application.loanType, location: @application.location, mortAddress: @application.mortAddress, mortCity: @application.mortCity, mortPostalcode: @application.mortPostalcode, mortProvince: @application.mortProvince, mortSame: @application.mortSame, mortType: @application.mortType, mortgageAmnt: @application.mortgageAmnt, nonrrsp: @application.nonrrsp, notes: @application.notes, numberApplicants: @application.numberApplicants, otherAssets: @application.otherAssets, otherIncome: @application.otherIncome, payment: @application.payment, paymentType: @application.paymentType, postalCode: @application.postalCode, prefferedContact: @application.prefferedContact, province: @application.province, rate: @application.rate, rrsp: @application.rrsp, source: @application.source, title: @application.title, totalIncome: @application.totalIncome, work: @application.work }
    end

    assert_redirected_to application_path(assigns(:application))
  end

  test "should show application" do
    get :show, id: @application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @application
    assert_response :success
  end

  test "should update application" do
    patch :update, id: @application, application: { address: @application.address, agreeTerms: @application.agreeTerms, cell: @application.cell, city: @application.city, currentLender: @application.currentLender, currentMortgage: @application.currentMortgage, email: @application.email, emailConfirm: @application.emailConfirm, empAddress: @application.empAddress, empCity: @application.empCity, empLength: @application.empLength, empProvince: @application.empProvince, employer: @application.employer, firstName: @application.firstName, home: @application.home, incomeAnnual: @application.incomeAnnual, incomeType: @application.incomeType, lastName: @application.lastName, livingStatus: @application.livingStatus, loanType: @application.loanType, location: @application.location, mortAddress: @application.mortAddress, mortCity: @application.mortCity, mortPostalcode: @application.mortPostalcode, mortProvince: @application.mortProvince, mortSame: @application.mortSame, mortType: @application.mortType, mortgageAmnt: @application.mortgageAmnt, nonrrsp: @application.nonrrsp, notes: @application.notes, numberApplicants: @application.numberApplicants, otherAssets: @application.otherAssets, otherIncome: @application.otherIncome, payment: @application.payment, paymentType: @application.paymentType, postalCode: @application.postalCode, prefferedContact: @application.prefferedContact, province: @application.province, rate: @application.rate, rrsp: @application.rrsp, source: @application.source, title: @application.title, totalIncome: @application.totalIncome, work: @application.work }
    assert_redirected_to application_path(assigns(:application))
  end

  test "should destroy application" do
    assert_difference('Application.count', -1) do
      delete :destroy, id: @application
    end

    assert_redirected_to applications_path
  end
end
