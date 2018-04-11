# fititnt at bravo in /alligo/code/fititnt/wekan-playground
$ wget https://raw.githubusercontent.com/wekan/wekan-mongodb/master/docker-compose.yml
--2018-04-11 01:57:57--  https://raw.githubusercontent.com/wekan/wekan-mongodb/master/docker-compose.yml
Resolvendo raw.githubusercontent.com (raw.githubusercontent.com)... 151.101.92.133
Conectando-se a raw.githubusercontent.com (raw.githubusercontent.com)|151.101.92.133|:443... conectado.
A requisição HTTP foi enviada, aguardando resposta... 200 OK
Tamanho: 5893 (5,8K) [text/plain]
Salvando em: “docker-compose.yml”

docker-compose.yml                                        100%[=====================================================================================================================================>]   5,75K  --.-KB/s    in 0s      

2018-04-11 01:57:58 (12,1 MB/s) - “docker-compose.yml” salvo [5893/5893]


# fititnt at bravo in /alligo/code/fititnt/wekan-playground
$ docker-compose up

Creating network "wekanplayground_wekan-tier" with driver "bridge"
Creating volume "wekanplayground_wekan-db" with local driver
Creating volume "wekanplayground_wekan-db-dump" with local driver
Pulling wekandb (mongo:3.2.19)...
3.2.19: Pulling from library/mongo
b0568b191983: Already exists
1e8b5b4e67a0: Already exists
a87b29dbb553: Already exists
908c259a6a99: Already exists
2fdec16e62a3: Already exists
44d8cda9e711: Pull complete
58a4a81b251e: Pull complete
78cea6291772: Pull complete
78d2956a3415: Pull complete
eef0c803907b: Pull complete
f15e23e30571: Pull complete
Digest: sha256:63d29df3b3f9763dffa6dcc41eafd62bb2cab5a1dd7f0819124a9c2955cdd770
Status: Downloaded newer image for mongo:3.2.19
Pulling wekan (quay.io/wekan/wekan:latest)...
latest: Pulling from wekan/wekan
0f51a7940c7b: Pull complete
7b99a438ffc8: Pull complete
9f10e63f7094: Pull complete
Digest: sha256:f399bc6ddb868916a566eb43719dfd3fd915affd76c4ee9828a59cde6d12f606
Creating wekan-db ... done
Creating wekan-app ... done
Creating wekan-app ... 
Attaching to wekan-db, wekan-app
wekan-db   | 2018-04-11T05:00:34.945+0000 I CONTROL  [initandlisten] MongoDB starting : pid=1 port=27017 dbpath=/data/db 64-bit host=1e805fdbc891
wekan-db   | 2018-04-11T05:00:34.956+0000 I CONTROL  [initandlisten] db version v3.2.19
wekan-db   | 2018-04-11T05:00:34.956+0000 I CONTROL  [initandlisten] git version: a9f574de6a566a58b24d126b44a56718d181e989
wekan-db   | 2018-04-11T05:00:34.956+0000 I CONTROL  [initandlisten] OpenSSL version: OpenSSL 1.0.1t  3 May 2016
wekan-db   | 2018-04-11T05:00:34.956+0000 I CONTROL  [initandlisten] allocator: tcmalloc
wekan-db   | 2018-04-11T05:00:34.956+0000 I CONTROL  [initandlisten] modules: none
wekan-db   | 2018-04-11T05:00:34.956+0000 I CONTROL  [initandlisten] build environment:
wekan-db   | 2018-04-11T05:00:34.956+0000 I CONTROL  [initandlisten]     distmod: debian81
wekan-db   | 2018-04-11T05:00:34.956+0000 I CONTROL  [initandlisten]     distarch: x86_64
wekan-db   | 2018-04-11T05:00:34.956+0000 I CONTROL  [initandlisten]     target_arch: x86_64
wekan-db   | 2018-04-11T05:00:34.956+0000 I CONTROL  [initandlisten] options: { replication: { oplogSizeMB: 128 }, storage: { mmapv1: { smallFiles: true } } }
wekan-db   | 2018-04-11T05:00:34.960+0000 I STORAGE  [initandlisten] wiredtiger_open config: create,cache_size=8G,session_max=20000,eviction=(threads_min=4,threads_max=4),config_base=false,statistics=(fast),log=(enabled=true,archive=true,path=journal,compressor=snappy),file_manager=(close_idle_time=100000),checkpoint=(wait=60,log_size=2GB),statistics_log=(wait=0),verbose=(recovery_progress),
wekan-db   | 2018-04-11T05:00:36.006+0000 W STORAGE  [initandlisten] Detected configuration for non-active storage engine mmapv1 when current storage engine is wiredTiger
wekan-db   | 2018-04-11T05:00:36.006+0000 I CONTROL  [initandlisten] 
wekan-db   | 2018-04-11T05:00:36.006+0000 I CONTROL  [initandlisten] ** WARNING: /sys/kernel/mm/transparent_hugepage/enabled is 'always'.
wekan-db   | 2018-04-11T05:00:36.006+0000 I CONTROL  [initandlisten] **        We suggest setting it to 'never'
wekan-db   | 2018-04-11T05:00:36.006+0000 I CONTROL  [initandlisten] 
wekan-db   | 2018-04-11T05:00:36.006+0000 I CONTROL  [initandlisten] ** WARNING: /sys/kernel/mm/transparent_hugepage/defrag is 'always'.
wekan-db   | 2018-04-11T05:00:36.006+0000 I CONTROL  [initandlisten] **        We suggest setting it to 'never'
wekan-db   | 2018-04-11T05:00:36.006+0000 I CONTROL  [initandlisten] 
wekan-app  | 
wekan-app  | /build/programs/server/node_modules/fibers/future.js:313
wekan-app  | 						throw(ex);
wekan-app  | 						^
wekan-app  | MongoError: failed to connect to server [wekandb:27017] on first connect [MongoError: connect ECONNREFUSED 172.23.0.2:27017]
wekan-app  |     at Pool.<anonymous> (/build/programs/server/npm/node_modules/meteor/npm-mongo/node_modules/mongodb-core/lib/topologies/server.js:336:35)
wekan-app  |     at emitOne (events.js:116:13)
wekan-app  |     at Pool.emit (events.js:211:7)
wekan-app  |     at Connection.<anonymous> (/build/programs/server/npm/node_modules/meteor/npm-mongo/node_modules/mongodb-core/lib/connection/pool.js:280:12)
wekan-app  |     at Object.onceWrapper (events.js:317:30)
wekan-app  |     at emitTwo (events.js:126:13)
wekan-app  |     at Connection.emit (events.js:214:7)
wekan-app  |     at Socket.<anonymous> (/build/programs/server/npm/node_modules/meteor/npm-mongo/node_modules/mongodb-core/lib/connection/connection.js:187:49)
wekan-app  |     at Object.onceWrapper (events.js:315:30)
wekan-app  |     at emitOne (events.js:116:13)
wekan-db   | 2018-04-11T05:00:36.537+0000 I NETWORK  [HostnameCanonicalizationWorker] Starting hostname canonicalization worker
wekan-db   | 2018-04-11T05:00:36.538+0000 I FTDC     [initandlisten] Initializing full-time diagnostic data capture with directory '/data/db/diagnostic.data'
wekan-db   | 2018-04-11T05:00:36.538+0000 I NETWORK  [initandlisten] waiting for connections on port 27017
wekan-db   | 2018-04-11T05:00:38.981+0000 I NETWORK  [initandlisten] connection accepted from 172.23.0.3:55336 #1 (1 connection now open)
wekan-db   | 2018-04-11T05:00:39.551+0000 I INDEX    [conn1] build index on: wekan.users properties: { v: 1, unique: true, key: { username: 1 }, name: "username_1", ns: "wekan.users", sparse: 1 }
wekan-db   | 2018-04-11T05:00:39.551+0000 I INDEX    [conn1] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:39.553+0000 I INDEX    [conn1] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:39.553+0000 I COMMAND  [conn1] command wekan.$cmd command: createIndexes { createIndexes: "users", indexes: [ { name: "username_1", key: { username: 1 }, unique: 1, sparse: 1 } ] } keyUpdates:0 writeConflicts:0 numYields:0 reslen:113 locks:{ Global: { acquireCount: { r: 1, w: 1 } }, Database: { acquireCount: { W: 1 } }, Collection: { acquireCount: { w: 1 } } } protocol:op_query 552ms
wekan-db   | 2018-04-11T05:00:39.652+0000 I INDEX    [conn1] build index on: wekan.users properties: { v: 1, unique: true, key: { emails.address: 1 }, name: "emails.address_1", ns: "wekan.users", sparse: 1 }
wekan-db   | 2018-04-11T05:00:39.652+0000 I INDEX    [conn1] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:39.654+0000 I INDEX    [conn1] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:39.727+0000 I INDEX    [conn1] build index on: wekan.users properties: { v: 1, unique: true, key: { services.resume.loginTokens.hashedToken: 1 }, name: "services.resume.loginTokens.hashedToken_1", ns: "wekan.users", sparse: 1 }
wekan-db   | 2018-04-11T05:00:39.727+0000 I INDEX    [conn1] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:39.728+0000 I INDEX    [conn1] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:39.823+0000 I INDEX    [conn1] build index on: wekan.users properties: { v: 1, unique: true, key: { services.resume.loginTokens.token: 1 }, name: "services.resume.loginTokens.token_1", ns: "wekan.users", sparse: 1 }
wekan-db   | 2018-04-11T05:00:39.823+0000 I INDEX    [conn1] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:39.825+0000 I INDEX    [conn1] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:39.909+0000 I INDEX    [conn1] build index on: wekan.users properties: { v: 1, key: { services.resume.haveLoginTokensToDelete: 1 }, name: "services.resume.haveLoginTokensToDelete_1", ns: "wekan.users", sparse: 1 }
wekan-db   | 2018-04-11T05:00:39.909+0000 I INDEX    [conn1] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:39.910+0000 I INDEX    [conn1] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:40.009+0000 I INDEX    [conn1] build index on: wekan.users properties: { v: 1, key: { services.resume.loginTokens.when: 1 }, name: "services.resume.loginTokens.when_1", ns: "wekan.users", sparse: 1 }
wekan-db   | 2018-04-11T05:00:40.009+0000 I INDEX    [conn1] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:40.010+0000 I INDEX    [conn1] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:40.111+0000 I INDEX    [conn1] build index on: wekan.users properties: { v: 1, key: { services.password.reset.when: 1 }, name: "services.password.reset.when_1", ns: "wekan.users", sparse: 1 }
wekan-db   | 2018-04-11T05:00:40.111+0000 I INDEX    [conn1] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:40.113+0000 I INDEX    [conn1] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:40.515+0000 I INDEX    [conn1] build index on: wekan.meteor_accounts_loginServiceConfiguration properties: { v: 1, unique: true, key: { service: 1 }, name: "service_1", ns: "wekan.meteor_accounts_loginServiceConfiguration" }
wekan-db   | 2018-04-11T05:00:40.515+0000 I INDEX    [conn1] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:40.516+0000 I INDEX    [conn1] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:40.517+0000 I COMMAND  [conn1] command wekan.$cmd command: createIndexes { createIndexes: "meteor_accounts_loginServiceConfiguration", indexes: [ { name: "service_1", key: { service: 1 }, unique: true } ] } keyUpdates:0 writeConflicts:0 numYields:0 reslen:113 locks:{ Global: { acquireCount: { r: 1, w: 1 } }, Database: { acquireCount: { W: 1 } }, Collection: { acquireCount: { w: 1 } } } protocol:op_query 240ms
wekan-db   | 2018-04-11T05:00:41.159+0000 I INDEX    [conn1] build index on: wekan.users properties: { v: 1, unique: true, key: { services.email.verificationTokens.token: 1 }, name: "services.email.verificationTokens.token_1", ns: "wekan.users", sparse: 1 }
wekan-db   | 2018-04-11T05:00:41.159+0000 I INDEX    [conn1] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:41.160+0000 I INDEX    [conn1] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:41.160+0000 I COMMAND  [conn1] command wekan.$cmd command: createIndexes { createIndexes: "users", indexes: [ { name: "services.email.verificationTokens.token_1", key: { services.email.verificationTokens.token: 1 }, unique: 1, sparse: 1 } ] } keyUpdates:0 writeConflicts:0 numYields:0 reslen:113 locks:{ Global: { acquireCount: { r: 1, w: 1 } }, Database: { acquireCount: { W: 1 } }, Collection: { acquireCount: { w: 1 } } } protocol:op_query 342ms
wekan-db   | 2018-04-11T05:00:41.338+0000 I INDEX    [conn1] build index on: wekan.users properties: { v: 1, unique: true, key: { services.password.reset.token: 1 }, name: "services.password.reset.token_1", ns: "wekan.users", sparse: 1 }
wekan-db   | 2018-04-11T05:00:41.338+0000 I INDEX    [conn1] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:41.339+0000 I INDEX    [conn1] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:41.339+0000 I COMMAND  [conn1] command wekan.$cmd command: createIndexes { createIndexes: "users", indexes: [ { name: "services.password.reset.token_1", key: { services.password.reset.token: 1 }, unique: 1, sparse: 1 } ] } keyUpdates:0 writeConflicts:0 numYields:0 reslen:113 locks:{ Global: { acquireCount: { r: 1, w: 1 } }, Database: { acquireCount: { W: 1 } }, Collection: { acquireCount: { w: 1 } } } protocol:op_query 177ms
wekan-db   | 2018-04-11T05:00:41.365+0000 I NETWORK  [initandlisten] connection accepted from 172.23.0.3:55340 #2 (2 connections now open)
wekan-db   | 2018-04-11T05:00:41.511+0000 I COMMAND  [conn2] command wekan.presences command: insert { insert: "presences", documents: [ { _id: "Giumfxe9nJh6j5xGk", serverId: "hNg3WmJab2NdHy3Hh", ttl: new Date(1523423141359), clientAddress: null, status: "connected", connectedAt: new Date(1523422841359), lastSeen: new Date(1523422841359), state: {}, userId: null } ], ordered: true } ninserted:1 keyUpdates:0 writeConflicts:0 numYields:0 reslen:40 locks:{ Global: { acquireCount: { r: 2, w: 2 } }, Database: { acquireCount: { w: 1, W: 1 } }, Collection: { acquireCount: { w: 1, W: 1 } } } protocol:op_query 146ms
wekan-db   | 2018-04-11T05:00:41.511+0000 I WRITE    [conn1] update wekan.presences query: { _id: "oHL6uw5fAmE7hSLCJ" } update: { $set: { loginToken: null, userId: null, lastSeen: new Date(1523422841354) } } keysExamined:0 docsExamined:0 nMatched:0 nModified:0 keyUpdates:0 writeConflicts:0 numYields:0 locks:{ Global: { acquireCount: { r: 1, w: 1 } }, Database: { acquireCount: { w: 1 }, acquireWaitCount: { w: 1 }, timeAcquiringMicros: { w: 145973 } }, Collection: { acquireCount: { w: 1 } } } 146ms
wekan-db   | 2018-04-11T05:00:41.511+0000 I COMMAND  [conn1] command wekan.$cmd command: update { update: "presences", updates: [ { q: { _id: "oHL6uw5fAmE7hSLCJ" }, u: { $set: { loginToken: null, userId: null, lastSeen: new Date(1523422841354) } }, upsert: false, multi: false } ], ordered: true } keyUpdates:0 writeConflicts:0 numYields:0 reslen:55 locks:{ Global: { acquireCount: { r: 1, w: 1 } }, Database: { acquireCount: { w: 1 }, acquireWaitCount: { w: 1 }, timeAcquiringMicros: { w: 145973 } }, Collection: { acquireCount: { w: 1 } } } protocol:op_query 146ms
wekan-db   | 2018-04-11T05:00:41.788+0000 I NETWORK  [initandlisten] connection accepted from 172.23.0.3:55342 #3 (3 connections now open)
wekan-db   | 2018-04-11T05:00:41.852+0000 I NETWORK  [initandlisten] connection accepted from 172.23.0.3:55344 #4 (4 connections now open)
wekan-db   | 2018-04-11T05:00:42.080+0000 I COMMAND  [conn1] command wekan.meteor-migrations command: insert { insert: "meteor-migrations", documents: [ { name: "board-background-color", _id: "zMfrWHpM79eG9hbYg" } ], ordered: true } ninserted:1 keyUpdates:0 writeConflicts:0 numYields:0 reslen:40 locks:{ Global: { acquireCount: { r: 2, w: 2 } }, Database: { acquireCount: { w: 1, W: 1 } }, Collection: { acquireCount: { w: 1, W: 1 } } } protocol:op_query 188ms
wekan-db   | 2018-04-11T05:00:42.097+0000 I NETWORK  [initandlisten] connection accepted from 172.23.0.3:55346 #5 (5 connections now open)
wekan-db   | 2018-04-11T05:00:42.302+0000 I WRITE    [conn5] update wekan.accountSettings query: { _id: "accounts-allowEmailChange" } update: { $setOnInsert: { booleanValue: false, sort: 0 } } keysExamined:0 docsExamined:0 nMatched:1 nModified:1 upsert:1 keyUpdates:0 writeConflicts:0 numYields:0 locks:{ Global: { acquireCount: { r: 3, w: 3 } }, Database: { acquireCount: { w: 2, W: 1 } }, Collection: { acquireCount: { w: 2 } } } 166ms
wekan-db   | 2018-04-11T05:00:42.302+0000 I COMMAND  [conn5] command wekan.$cmd command: update { update: "accountSettings", updates: [ { q: { _id: "accounts-allowEmailChange" }, u: { $setOnInsert: { booleanValue: false, sort: 0 } }, upsert: true, multi: false } ], ordered: true } keyUpdates:0 writeConflicts:0 numYields:0 reslen:124 locks:{ Global: { acquireCount: { r: 3, w: 3 } }, Database: { acquireCount: { w: 2, W: 1 } }, Collection: { acquireCount: { w: 2 } } } protocol:op_query 166ms
wekan-db   | 2018-04-11T05:00:45.527+0000 I INDEX    [conn5] build index on: wekan.activities properties: { v: 1, key: { createdAt: -1 }, name: "createdAt_-1", ns: "wekan.activities" }
wekan-db   | 2018-04-11T05:00:45.527+0000 I INDEX    [conn5] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:45.528+0000 I INDEX    [conn5] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:45.528+0000 I COMMAND  [conn5] command wekan.$cmd command: createIndexes { createIndexes: "activities", indexes: [ { name: "createdAt_-1", key: { createdAt: -1 } } ] } keyUpdates:0 writeConflicts:0 numYields:0 reslen:113 locks:{ Global: { acquireCount: { r: 1, w: 1 } }, Database: { acquireCount: { W: 1 } }, Collection: { acquireCount: { w: 1 } } } protocol:op_query 3223ms
wekan-db   | 2018-04-11T05:00:45.686+0000 I INDEX    [conn1] build index on: wekan.activities properties: { v: 1, key: { cardId: 1, createdAt: -1 }, name: "cardId_1_createdAt_-1", ns: "wekan.activities" }
wekan-db   | 2018-04-11T05:00:45.687+0000 I INDEX    [conn1] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:45.688+0000 I INDEX    [conn1] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:45.688+0000 I COMMAND  [conn1] command wekan.$cmd command: createIndexes { createIndexes: "activities", indexes: [ { name: "cardId_1_createdAt_-1", key: { cardId: 1, createdAt: -1 } } ] } keyUpdates:0 writeConflicts:0 numYields:0 reslen:113 locks:{ Global: { acquireCount: { r: 1, w: 1 } }, Database: { acquireCount: { W: 1 } }, Collection: { acquireCount: { w: 1 } } } protocol:op_query 156ms
wekan-db   | 2018-04-11T05:00:45.767+0000 I INDEX    [conn5] build index on: wekan.activities properties: { v: 1, key: { boardId: 1, createdAt: -1 }, name: "boardId_1_createdAt_-1", ns: "wekan.activities" }
wekan-db   | 2018-04-11T05:00:45.767+0000 I INDEX    [conn5] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:45.768+0000 I INDEX    [conn5] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:45.843+0000 I INDEX    [conn2] build index on: wekan.activities properties: { v: 1, key: { commentId: 1 }, name: "commentId_1", ns: "wekan.activities", partialFilterExpression: { commentId: { $exists: true } } }
wekan-db   | 2018-04-11T05:00:45.843+0000 I INDEX    [conn2] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:45.844+0000 I INDEX    [conn2] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:45.935+0000 I INDEX    [conn1] build index on: wekan.activities properties: { v: 1, key: { attachmentId: 1 }, name: "attachmentId_1", ns: "wekan.activities", partialFilterExpression: { attachmentId: { $exists: true } } }
wekan-db   | 2018-04-11T05:00:45.935+0000 I INDEX    [conn1] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:45.936+0000 I INDEX    [conn1] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:46.126+0000 I COMMAND  [conn5] command wekan.announcements command: insert { insert: "announcements", documents: [ { enabled: false, sort: 0, _id: "n2ifsCsCBzmmr4pKN" } ], ordered: true } ninserted:1 keyUpdates:0 writeConflicts:0 numYields:0 reslen:40 locks:{ Global: { acquireCount: { r: 2, w: 2 } }, Database: { acquireCount: { w: 1, W: 1 } }, Collection: { acquireCount: { w: 1, W: 1 } } } protocol:op_query 187ms
wekan-db   | 2018-04-11T05:00:46.337+0000 I INDEX    [conn2] build index on: wekan.boards properties: { v: 1, unique: true, key: { _id: 1, members.userId: 1 }, name: "_id_1_members.userId_1", ns: "wekan.boards" }
wekan-db   | 2018-04-11T05:00:46.337+0000 I INDEX    [conn2] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:46.339+0000 I INDEX    [conn2] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:46.339+0000 I COMMAND  [conn2] command wekan.$cmd command: createIndexes { createIndexes: "boards", indexes: [ { name: "_id_1_members.userId_1", key: { _id: 1, members.userId: 1 }, unique: true } ] } keyUpdates:0 writeConflicts:0 numYields:0 reslen:113 locks:{ Global: { acquireCount: { r: 1, w: 1 } }, Database: { acquireCount: { W: 1 } }, Collection: { acquireCount: { w: 1 } } } protocol:op_query 210ms
wekan-db   | 2018-04-11T05:00:46.424+0000 I INDEX    [conn1] build index on: wekan.boards properties: { v: 1, key: { members.userId: 1 }, name: "members.userId_1", ns: "wekan.boards" }
wekan-db   | 2018-04-11T05:00:46.424+0000 I INDEX    [conn1] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:46.425+0000 I INDEX    [conn1] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:46.675+0000 I INDEX    [conn5] build index on: wekan.card_comments properties: { v: 1, key: { cardId: 1, createdAt: -1 }, name: "cardId_1_createdAt_-1", ns: "wekan.card_comments" }
wekan-db   | 2018-04-11T05:00:46.675+0000 I INDEX    [conn5] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:46.676+0000 I INDEX    [conn5] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:46.677+0000 I COMMAND  [conn5] command wekan.$cmd command: createIndexes { createIndexes: "card_comments", indexes: [ { name: "cardId_1_createdAt_-1", key: { cardId: 1, createdAt: -1 } } ] } keyUpdates:0 writeConflicts:0 numYields:0 reslen:113 locks:{ Global: { acquireCount: { r: 1, w: 1 } }, Database: { acquireCount: { W: 1 } }, Collection: { acquireCount: { w: 1 } } } protocol:op_query 249ms
wekan-db   | 2018-04-11T05:00:46.988+0000 I INDEX    [conn2] build index on: wekan.cards properties: { v: 1, key: { boardId: 1, createdAt: -1 }, name: "boardId_1_createdAt_-1", ns: "wekan.cards" }
wekan-db   | 2018-04-11T05:00:46.988+0000 I INDEX    [conn2] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:46.997+0000 I INDEX    [conn2] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:46.997+0000 I COMMAND  [conn2] command wekan.$cmd command: createIndexes { createIndexes: "cards", indexes: [ { name: "boardId_1_createdAt_-1", key: { boardId: 1, createdAt: -1 } } ] } keyUpdates:0 writeConflicts:0 numYields:0 reslen:113 locks:{ Global: { acquireCount: { r: 1, w: 1 } }, Database: { acquireCount: { W: 1 } }, Collection: { acquireCount: { w: 1 } } } protocol:op_query 318ms
wekan-db   | 2018-04-11T05:00:47.326+0000 I INDEX    [conn1] build index on: wekan.checklistItems properties: { v: 1, key: { checklistId: 1 }, name: "checklistId_1", ns: "wekan.checklistItems" }
wekan-db   | 2018-04-11T05:00:47.326+0000 I INDEX    [conn1] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:47.327+0000 I INDEX    [conn1] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:47.328+0000 I COMMAND  [conn1] command wekan.$cmd command: createIndexes { createIndexes: "checklistItems", indexes: [ { name: "checklistId_1", key: { checklistId: 1 } } ] } keyUpdates:0 writeConflicts:0 numYields:0 reslen:113 locks:{ Global: { acquireCount: { r: 1, w: 1 } }, Database: { acquireCount: { W: 1 } }, Collection: { acquireCount: { w: 1 } } } protocol:op_query 328ms
wekan-db   | 2018-04-11T05:00:48.693+0000 I INDEX    [conn5] build index on: wekan.checklists properties: { v: 1, key: { cardId: 1, createdAt: 1 }, name: "cardId_1_createdAt_1", ns: "wekan.checklists" }
wekan-db   | 2018-04-11T05:00:48.693+0000 I INDEX    [conn5] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:48.733+0000 I INDEX    [conn5] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:48.734+0000 I COMMAND  [conn5] command wekan.$cmd command: createIndexes { createIndexes: "checklists", indexes: [ { name: "cardId_1_createdAt_1", key: { cardId: 1, createdAt: 1 } } ] } keyUpdates:0 writeConflicts:0 numYields:0 reslen:113 locks:{ Global: { acquireCount: { r: 1, w: 1 } }, Database: { acquireCount: { W: 1 } }, Collection: { acquireCount: { w: 1 } } } protocol:op_query 1403ms
wekan-db   | 2018-04-11T05:00:51.850+0000 I NETWORK  [initandlisten] connection accepted from 172.23.0.3:55354 #6 (6 connections now open)
wekan-db   | 2018-04-11T05:00:51.855+0000 I NETWORK  [initandlisten] connection accepted from 172.23.0.3:55356 #7 (7 connections now open)
wekan-db   | 2018-04-11T05:00:53.732+0000 I INDEX    [conn2] build index on: wekan.invitation_codes properties: { v: 1, unique: true, key: { email: 1 }, name: "c2_email", ns: "wekan.invitation_codes", background: true, sparse: false }
wekan-db   | 2018-04-11T05:00:53.732+0000 I INDEX    [conn2] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:53.732+0000 I COMMAND  [conn1] command wekan.cfs.attachments.filerecord command: find { find: "cfs.attachments.filerecord", filter: { $and: [ { $or: [ { $and: [ { copies.attachments: { $ne: null } }, { copies.attachments: { $ne: false } } ] }, { failures.copies.attachments.doneTrying: true } ] } ] } } planSummary: EOF keysExamined:0 docsExamined:0 cursorExhausted:1 keyUpdates:0 writeConflicts:0 numYields:0 nreturned:0 reslen:138 locks:{ Global: { acquireCount: { r: 2 } }, Database: { acquireCount: { r: 1 }, acquireWaitCount: { r: 1 }, timeAcquiringMicros: { r: 1885112 } }, Collection: { acquireCount: { r: 1 } } } protocol:op_query 1885ms
wekan-db   | 2018-04-11T05:00:53.732+0000 I COMMAND  [conn5] command wekan.cfs.attachments.filerecord command: find { find: "cfs.attachments.filerecord", filter: { uploadedAt: { $exists: true }, copies.attachments: null, failures.copies.attachments.doneTrying: { $ne: true } }, projection: { copies: 0 } } planSummary: EOF keysExamined:0 docsExamined:0 cursorExhausted:1 keyUpdates:0 writeConflicts:0 numYields:0 nreturned:0 reslen:138 locks:{ Global: { acquireCount: { r: 2 } }, Database: { acquireCount: { r: 1 }, acquireWaitCount: { r: 1 }, timeAcquiringMicros: { r: 1886658 } }, Collection: { acquireCount: { r: 1 } } } protocol:op_query 1886ms
wekan-db   | 2018-04-11T05:00:53.733+0000 I COMMAND  [conn6] command wekan.cfs.attachments.filerecord command: find { find: "cfs.attachments.filerecord", filter: {} } planSummary: EOF keysExamined:0 docsExamined:0 cursorExhausted:1 keyUpdates:0 writeConflicts:0 numYields:0 nreturned:0 reslen:138 locks:{ Global: { acquireCount: { r: 2 } }, Database: { acquireCount: { r: 1 }, acquireWaitCount: { r: 1 }, timeAcquiringMicros: { r: 1882632 } }, Collection: { acquireCount: { r: 1 } } } protocol:op_query 1882ms
wekan-db   | 2018-04-11T05:00:53.733+0000 I COMMAND  [conn7] command wekan.cfs.avatars.filerecord command: find { find: "cfs.avatars.filerecord", filter: { uploadedAt: { $exists: true }, copies.avatars: null, failures.copies.avatars.doneTrying: { $ne: true } }, projection: { copies: 0 } } planSummary: EOF keysExamined:0 docsExamined:0 cursorExhausted:1 keyUpdates:0 writeConflicts:0 numYields:0 nreturned:0 reslen:134 locks:{ Global: { acquireCount: { r: 2 } }, Database: { acquireCount: { r: 1 }, acquireWaitCount: { r: 1 }, timeAcquiringMicros: { r: 1877385 } }, Collection: { acquireCount: { r: 1 } } } protocol:op_query 1877ms
wekan-db   | 2018-04-11T05:00:53.733+0000 I COMMAND  [conn2] command wekan.$cmd command: createIndexes { createIndexes: "invitation_codes", indexes: [ { name: "c2_email", key: { email: 1 }, background: true, unique: true, sparse: false } ] } keyUpdates:0 writeConflicts:0 numYields:0 reslen:113 locks:{ Global: { acquireCount: { r: 1, w: 1 } }, Database: { acquireCount: { w: 1, W: 2 }, acquireWaitCount: { W: 1 }, timeAcquiringMicros: { W: 152 } }, Collection: { acquireCount: { w: 1 } } } protocol:op_query 4997ms
wekan-db   | 2018-04-11T05:00:53.997+0000 I INDEX    [conn6] build index on: wekan.lists properties: { v: 1, key: { boardId: 1 }, name: "boardId_1", ns: "wekan.lists" }
wekan-db   | 2018-04-11T05:00:53.997+0000 I INDEX    [conn6] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:53.998+0000 I INDEX    [conn6] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:53.998+0000 I COMMAND  [conn6] command wekan.$cmd command: createIndexes { createIndexes: "lists", indexes: [ { name: "boardId_1", key: { boardId: 1 } } ] } keyUpdates:0 writeConflicts:0 numYields:0 reslen:113 locks:{ Global: { acquireCount: { r: 1, w: 1 } }, Database: { acquireCount: { W: 1 } }, Collection: { acquireCount: { w: 1 } } } protocol:op_query 262ms
wekan-db   | 2018-04-11T05:00:54.170+0000 I COMMAND  [conn5] command wekan.settings command: insert { insert: "settings", documents: [ { disableRegistration: false, mailServer: { enableTLS: false, from: "Wekan <wekan@example.com>" }, createdAt: new Date(1523422854000), modifiedAt: new Date(1523422854000), _id: "YHciB9y9BDsaui2yq" } ], ordered: true } ninserted:1 keyUpdates:0 writeConflicts:0 numYields:0 reslen:40 locks:{ Global: { acquireCount: { r: 2, w: 2 } }, Database: { acquireCount: { w: 1, W: 1 } }, Collection: { acquireCount: { w: 1, W: 1 } } } protocol:op_query 166ms
wekan-db   | 2018-04-11T05:00:54.425+0000 I INDEX    [conn2] build index on: wekan.swimlanes properties: { v: 1, key: { boardId: 1 }, name: "boardId_1", ns: "wekan.swimlanes" }
wekan-db   | 2018-04-11T05:00:54.425+0000 I INDEX    [conn2] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:54.426+0000 I INDEX    [conn2] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:54.426+0000 I COMMAND  [conn2] command wekan.$cmd command: createIndexes { createIndexes: "swimlanes", indexes: [ { name: "boardId_1", key: { boardId: 1 } } ] } keyUpdates:0 writeConflicts:0 numYields:0 reslen:113 locks:{ Global: { acquireCount: { r: 1, w: 1 } }, Database: { acquireCount: { W: 1 } }, Collection: { acquireCount: { w: 1 } } } protocol:op_query 253ms
wekan-db   | 2018-04-11T05:00:54.664+0000 I INDEX    [conn5] build index on: wekan.unsaved-edits properties: { v: 1, key: { userId: 1 }, name: "userId_1", ns: "wekan.unsaved-edits" }
wekan-db   | 2018-04-11T05:00:54.664+0000 I INDEX    [conn5] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
wekan-db   | 2018-04-11T05:00:54.665+0000 I INDEX    [conn5] build index done.  scanned 0 total records. 0 secs
wekan-db   | 2018-04-11T05:00:54.665+0000 I COMMAND  [conn5] command wekan.$cmd command: createIndexes { createIndexes: "unsaved-edits", indexes: [ { name: "userId_1", key: { userId: 1 } } ] } keyUpdates:0 writeConflicts:0 numYields:0 reslen:113 locks:{ Global: { acquireCount: { r: 1, w: 1 } }, Database: { acquireCount: { W: 1 } }, Collection: { acquireCount: { w: 1 } } } protocol:op_query 237ms

(...)


^CGracefully stopping... (press Ctrl+C again to force)
Stopping wekan-app ... done
Stopping wekan-db  ... done

# fititnt at bravo in /alligo/code/fititnt/wekan-playground
$ docker-compose up
Starting wekan-db ... done
Recreating wekan-app ... done
Attaching to wekan-db, wekan-app


(...)

wekan-db   | 2018-04-11T05:36:47.978+0000 I NETWORK  [conn3] end connection 172.23.0.3:56168 (8 connections now open)
^CGracefully stopping... (press Ctrl+C again to force)
Stopping wekan-app ... done
Stopping wekan-db  ... done

# fititnt at bravo in /alligo/code/fititnt/wekan-playground
$ docker-compose down --volumes --rmi all
Removing wekan-app ... done
Removing wekan-db  ... done
Removing network wekanplayground_wekan-tier
Removing volume wekanplayground_wekan-db
Removing volume wekanplayground_wekan-db-dump
Removing image mongo:3.2.19
Removing image quay.io/wekan/wekan
