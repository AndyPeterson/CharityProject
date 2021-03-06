[![Build Status](https://travis-ci.org/coldbox-modules/cbstorages.svg?branch=development)](https://travis-ci.org/coldbox-modules/cbstorages)

# WELCOME TO THE CBSTORAGES MODULE

The `cbstorages` module will provide you with a collection of **smart** :wink: storage services that will enhance the capabilities of the major ColdFusion (CFML) scopes: 

- Application
- Cache
- Client
- Cluster (Lucee Only)
- Cookie
- Request
- Session

## Enhancement Capabilities

- Consistent API for dealing with all scopes
- The `CacheStorage` allows you to leverage distributed caches like Couchbase, Redis, ehCache, etc for distributed session management. It can act as a distributed session scope.
- The `CookieStorage` can do automatic encryption/decryption
- Ability to retrieve and clear all values stored in a scope
- Much More

## LICENSE

Apache License, Version 2.0.

## IMPORTANT LINKS

- Source: https://github.com/coldbox-modules/cbstorages
- Issues: https://github.com/coldbox-modules/cbstorages#issues
- ForgeBox: https://forgebox.io/view/cbstorages
- [Changelog](changelog.md)

## SYSTEM REQUIREMENTS

- Lucee 4.5+
- ColdFusion 11+

# INSTRUCTIONS

Just drop into your **modules** folder or use CommandBox to install

`box install cbstorages`

## WireBox Mappings

The module registers the following storage mappings:

* `applicationStorage@cbstorages` - For application based storage
* `clientStorage@cbstorages` - For client based storage
* `cookieStorage@cbstorages` - For cookie based storage
* `clusterStorage@cbstorages` - For cluster based storage (Lucee only)
* `sessionStorage@cbstorages` - For session based storage
* `cacheStorage@cbstorages` - For CacheBox based storage simulating session/client
* `requestStorage@cbstorages` - For request based storage

You can check out the included [API Docs](https://apidocs.ortussolutions.com/#/coldbox-modules/cbstorages/) to see all the functions you can use for persistence.

## Settings

Some storages require further configuration via your configuration file `config/ColdBox.cfc` under a `storages` structure:

```js
storages = {
    // Cache Storage Settings
    cacheStorage = {
        cachename   = "The CacheBox cache provider to use",
        timeout     = 60 // The default timeout of the session bucket, defaults to 60
    },

    // Cluster Storage Settings
    clusterStorage = {
        clusterAppName = "MyApp"
    },

    // Cookie Storage settings
    cookieStorage = {
        useEncryption   = false,
        encryptionSeed  = "CBStorages",
        encryptionAlgorithm = "CFMX_COMPAT",
        encryptionEncoding = "HEX"
    }
};
```

********************************************************************************
Copyright Since 2005 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
www.ortussolutions.com
********************************************************************************

#### HONOR GOES TO GOD ABOVE ALL

Because of His grace, this project exists. If you don't like this, then don't read it, its not for you.

>"Therefore being justified by faith, we have peace with God through our Lord Jesus Christ:
By whom also we have access by faith into this grace wherein we stand, and rejoice in hope of the glory of God.
And not only so, but we glory in tribulations also: knowing that tribulation worketh patience;
And patience, experience; and experience, hope:
And hope maketh not ashamed; because the love of God is shed abroad in our hearts by the 
Holy Ghost which is given unto us. ." Romans 5:5

### THE DAILY BREAD

 > "I am the way, and the truth, and the life; no one comes to the Father, but by me (JESUS)" Jn 14:1-12
