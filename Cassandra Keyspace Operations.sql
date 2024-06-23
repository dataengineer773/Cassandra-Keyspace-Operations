# Run the below command on the newly opened terminal.
cqlsh --username cassandra --password PASSWORD

# Create a keyspace
CREATE KEYSPACE training
WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 3};

# List all keyspaces.
describe keyspaces

# Describe a keyspace
describe training

# Alter a keyspace
ALTER KEYSPACE training
WITH replication = {'class': 'NetworkTopologyStrategy'};

# Verify the changes using the describe command.
describe training

# Use a keyspace
use training;

# List all tables in this keyspace.
describe tables

# Drop a keyspace
drop keyspace training;

# Verify the changes using the describe command.
use system;
describe keyspaces