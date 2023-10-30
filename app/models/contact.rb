class Contact < MailForm::Base
    attribute :name, validate: true
    attribute :numero, validate: true
    attribute :email, validate: true
    attribute :file, attachment: true
    attribute :message
 

    def headers
    {
        subject: 'Sending email',
        to: 'deyste2023@hotmail.com',
        from: %("#{name}" <#{'deyste2023@hotmail.com'}>),
        encoding: 'base64'
    }
    end
end