CREATE TABLE expense_tracker.transaction (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES expense_tracker.users(id),
    category_id UUID NOT NULL REFERENCES expense_tracker.category(id),
    amount DECIMAL(18, 2) NOT NULL,
    date DATE NOT NULL,
    type VARCHAR(10) NOT NULL,
    payment_mode VARCHAR(20),
    description TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE
);
