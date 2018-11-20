// TODO: Build this module

'use strict';

function ProxyCacheEngine(options) {}

ProxyCacheEngine.prototype.CacheToDB = function() {
    return this.router;
};
ProxyCacheEngine.prototype.ServeFromDB = function() {
    return this.router;
};
ProxyCacheEngine.prototype.cacheListMsgs = function(filter) {
    return this.router;
};
ProxyCacheEngine.prototype.cacheGetMsg = function(msg_id) {
    return this.router;
};
ProxyCacheEngine.prototype.cacheGetMsg = function() {
    return this.router;
};

module.exports = ProxyCacheEngine;
