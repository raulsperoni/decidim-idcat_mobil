# frozen-string_literal: true

require "spec_helper"

describe Decidim::IdUruguay::VerificationInvalidNotification do
  let(:resource) { create(:user) }

  let(:event_name) { "decidim.verifications.iduruguay.invalid" }

  include_context "when a simple event"
  it_behaves_like "a simple event", skip_space_checks: true

  describe "email_subject" do
    it "is generated correctly" do
      expect(subject.email_subject).to eq("You could not be authorized for IdCat mòbil")
    end
  end

  describe "email_intro" do
    it "is generated correctly" do
      expect(subject.email_intro)
        .to eq("It has not been possible to grant you the IdCat mòbil authorization.")
    end
  end

  describe "email_outro" do
    it "is generated correctly" do
      expect(subject.email_outro)
        .to eq("Please, contact the support at your platform to check what has gone wrong.")
    end
  end

  describe "notification_title" do
    it "is generated correctly" do
      expect(subject.notification_title)
        .to include("Invalid IdCat mòbil authentication")
    end
  end
end
