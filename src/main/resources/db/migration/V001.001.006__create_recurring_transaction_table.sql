CREATE TABLE expense_tracker.recurring_transaction (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES expense_tracker.users(id),
    category_id UUID NOT NULL REFERENCES expense_tracker.category(id),
    amount DECIMAL(18, 2) NOT NULL,
    frequency VARCHAR(8) NOT NULL, -- ENUM: 'DAILY', 'WEEKLY', 'MONTHLY', 'YEARLY'
    type VARCHAR(8) NOT NULL, -- ENUM: 'INCOME', 'EXPENSE'
    next_due_date DATE NOT NULL
);
