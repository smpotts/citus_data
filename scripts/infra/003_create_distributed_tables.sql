/*
  These are commands to tell Citus to distribute these tables across the nodes in the cluster. It also provides the column to shard the tables.
*/

SELECT create_distributed_table('github_users', 'user_id');
SELECT create_distributed_table('github_events', 'user_id');
