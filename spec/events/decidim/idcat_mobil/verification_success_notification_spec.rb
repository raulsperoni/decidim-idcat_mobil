# frozen-string_literal: true

require "spec_helper"

describe Decidim::IdUruguay::VerificationSuccessNotification do
  let(:resource) { create(:user) }

  let(:event_name) { "decidim.verifications.iduruguay.ok" }

  include_context "when a simple event"
  it_behaves_like "a simple event", skip_space_checks: true

  describe "email_subject" do
    it "is generated correctly" do
      expect(subject.email_subject).to eq("You've been authorized for IdCat mòbil")
    end
  end

  describe "email_intro" do
    it "is generated correctly" do
      expect(subject.email_intro)
        .to eq("You have ben granted IdCat mòbil authorization.")
    end
  end

  describe "email_outro" do
    it "is generated correctly" do
      expect(subject.email_outro)
        .to eq("You can now perform all actions that require IdCat mòbil authorization.")
    end
  end

  describe "notification_title" do
    it "is generated correctly" do
      expect(subject.notification_title)
        .to include("Successful IdCat mòbil authentication")
    end
  end
end
