class StripeAccount
    attr_reader :account
    def initialize(account)
        @account = account 
    end
    def create_account 
        return if account.stripe_id.present?
        stripe_account = Stripe::Account.create(
            type: 'custom',
            country: 'US',
            email: account.user.email,
            capabilities: {
                card_payments: { requested: true },
                transfers: { requested: true },

                # Rquested capablities
                treasury: { requested: true },
                card_issuing: { requested: true },
            },
        )
    end
    def onboarding_url
        Stripe::AccountLink.create({
        account: account.Stripe_id,
        refresh_url: accounts_url,
        return_url: accounts_url,
        type: 'account_onboarding',
        collect: 'eventually_due',
        })
    end
end