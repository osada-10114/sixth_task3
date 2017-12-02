require "rails_helper"

RSpec.describe OrderMailer, type: :mailer do
  describe "send_when_ordered" do
    let(:mail) { OrderMailer.send_when_ordered }

    it "renders the headers" do
      expect(mail.subject).to eq("Send when ordered")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
