class AdminMailer < ActionMailer::Base
  default from: "noreply@university-suites.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_mailer.application_email.subject
  #
  def contact_email
    @contact = Contact.last
    mail to: "lauren@scholarhood.ca, kurtis.elliott@ratehub.ca"
  end
  def application_email
    @application = Application.last
    mail to: "lauren@scholarhood.ca, kurtis.elliott@ratehub.ca"
  end
end
