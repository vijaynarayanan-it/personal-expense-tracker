CREATE TABLE expense_tracker.audit_log (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES expense_tracker.users(id),
    action VARCHAR(10) NOT NULL, -- e.g., 'CREATE', 'UPDATE', 'DELETE'
    entity_type VARCHAR(50) NOT NULL,
    entity_id UUID NOT NULL,
    changed_at TIMESTAMP WITH TIME ZONE NOT NULL,
    before_data JSONB,
    after_data JSONB
);
