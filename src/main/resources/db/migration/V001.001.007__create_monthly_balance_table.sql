CREATE TABLE expense_tracker.monthly_balance (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES expense_tracker.users(id),
    month CHAR(7) NOT NULL,
    opening_balance DECIMAL(18, 2) NOT NULL,
    total_income DECIMAL(18, 2) NOT NULL,
    total_expense DECIMAL(18, 2) NOT NULL,
    closing_balance DECIMAL(18, 2) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
