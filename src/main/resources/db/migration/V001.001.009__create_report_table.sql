CREATE TABLE expense_tracker.report (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES expense_tracker.users(id),
    type VARCHAR(8) NOT NULL, -- 'DAILY', 'WEEKLY', 'MONTHLY', 'YEARLY'
    period_start DATE NOT NULL,
    period_end DATE NOT NULL,
    generated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    json_data JSONB
);
