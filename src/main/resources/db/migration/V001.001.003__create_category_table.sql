CREATE TABLE expense_tracker.category (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES expense_tracker.users(id),
    name VARCHAR(50) NOT NULL,
    color VARCHAR(20),
    is_fixed BOOLEAN NOT NULL DEFAULT FALSE
);
