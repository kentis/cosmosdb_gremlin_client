# Ruby Gremlin Client
based on [Gremlin Client](https://github.com/marcelocf/gremlin_client)


Gremlin client in ruby for the WebSocketChannelizer capable of connecting to CosmosDB Gramlin Databases.

This client is not thread safe by itself! If you want to make it safer for your app, please make sure
to use something like [ConnectionPool gem](https://github.com/mperham/connection_pool).

## Usage:

```bash
gem instal cosmosdb_gremlin_client
```

```ruby
conn = GremlinClient::Connection.new(host: '<db name>.gremlin.cosmos.azure.com', port:443, user_name: '/dbs/<db name>/colls/<graph name>', password: '<key>')
resp = conn.send_query("g.V().has('myVar', myValue)", {myValue: 'this_is_processed_by_gremlin_server'})
```

Alternativelly, you can use groovy files instead:

```ruby
resp = conn.file_send("query.groovy", {var1: 12})
```

```groovy
g.V().has("something", var1)
```

You can even specify the folder where to load those files in the constructor:

```ruby
conn = GremlinClient::Connection.new(gremlin_script_path:  'scripts/gremlin')
```
