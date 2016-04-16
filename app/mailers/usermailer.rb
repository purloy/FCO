class Usermailer < ApplicationMailer

	default to: 'Foreign Commonwealth Office'
	@url = "http://portal.herokuapp.com/login"
	def sendemail(sendmail)
		@usermail = sendmail

		mail(to: @usermail.send_to, subject: 'Letter Invitation', body: @usermail.content)
end
end
