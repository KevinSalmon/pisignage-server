'use strict';

module.exports = {
    env: 'docker',
    https: false,
    port: process.env.PORT || 3000,
    mongo: {
        uri: process.env.MONGO_URI || 'mongodb://127.0.0.1:27017/pisignage-server',
        options: {useMongoClient: true}
    },

    uploadDir: '/media',
    mediaDir: '/media',
    mediaPath: '/media/',
    thumbnailDir: '/media/_thumbnails',
    logStoreDir: '/media/_logs',
};