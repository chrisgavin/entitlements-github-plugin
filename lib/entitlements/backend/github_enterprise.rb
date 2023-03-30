# frozen_string_literal: true

module Entitlements
  class Backend
    class GitHubEnterprise
      include ::Contracts::Core
      C = ::Contracts

      # There are certain supported roles (which are mutually exclusive): owner, billing manager.
      # Define these in this one central place to be consumed everywhere.
      # The key is the name of the Entitlement, and that data is how this role appears on dotcom.
      ENTERPRISE_ROLES = {
        "owner"  => "OWNER",
        "billing-manager" => "BILLING_MANAGER"
      }

      # Error classes
      class DuplicateUserError < RuntimeError; end
    end
  end
end

require_relative "github_enterprise/controller"
require_relative "github_enterprise/provider"
require_relative "github_enterprise/service"
