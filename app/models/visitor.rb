class Visitor
  include ActiveModel::Model
  attr_accessor :email, :full_name, :campus_name, :string
  validates_presence_of :email, :full_name, :campus_name
  validates_format_of :email, with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i

  def subscribe
    mailchimp = Gibbon::Request.new(api_key: Rails.application.secrets.mailchimp_api_key)
    list_id = Rails.application.secrets.mailchimp_list_id
    result = mailchimp.lists(list_id).members.create(
      body: {
        email_address: self.email,
        status: 'subscribed',
        merge_fields: {
          FNAME: self.full_name,
          CNAME: self.campus_name
        }
    })
    Rails.logger.info("Subscribed #{self.email} to MailChimp") if result
  end

end
