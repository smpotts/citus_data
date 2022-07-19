-- create indexes on the events tables
-- NOTE: there is a GIN index to make quering the jsonb fields faster
--       GIN - generalized inverted index, used to speed up full text searches
CREATE INDEX event_type_index ON github_events (event_type);
CREATE INDEX payload_index ON github_events USING GIN (payload jsonb_path_ops);
