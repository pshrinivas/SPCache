# SPCache
SPCache is a caching framework which can be used for caching. It is designed in such a way that it can be configured to use any data store and any eviction policy. For creating an eviction Policy we need to implement SPCacheEvictionPolicy protocol
Similarly for data store we need to implement StorageProvider protocol .

## Classes
- ### SPCache 
This is the public class which will be exposed to external modules. It consists of interface to store to data store and also evict from it.
- ### SPCacheConfig 
Config class encapsulates all necessary configuration to be used by cache. Its mandatory param for instantiation of cache
- ### SerializationProtocol 
Implementing this protocol is mandatory for all type of data to be stored in cache. Basically implementation demands converting the desired type to data and convert back to said type from data.
