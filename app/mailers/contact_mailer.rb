class ContactMailer < ActionMailer
    default to: "disa.coty@gmail.com"
    
    def contact(email, name, body)
        @email = email
        @name - name
        @body = body
    end
    
    mail(from: email, subject: "Contact Form Message")
end