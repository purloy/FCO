class Usermailer < ApplicationMailer

	default to: 'Foreign Commonwealth Office'

	def sendemail(sendmail)
		@usermail = sendmail

		mail(to: @usermail.send_to, subject: 'Letter Invitation', body: @usermail.content)
end
end
