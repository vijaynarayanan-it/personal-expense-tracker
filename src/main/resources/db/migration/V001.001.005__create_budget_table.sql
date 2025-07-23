CREATE TABLE expense_tracker.budget (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES expense_tracker.users(id),
    category_id UUID NOT NULL REFERENCES expense_tracker.category(id),
    month CHAR(7) NOT NULL, -- Format: YYYY-MM
    limit_amount DECIMAL(18, 2) NOT NULL
);
