module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: {
    default: {
      connector: 'bookshelf',
      settings: {
        client: 'sqlite',
        host: env('DATABASE_HOST', '127.0.0.1'),
        port: env('DATABASE_PORT', 5432),
        database: env('DATABASE_NAME', 'strapi'),
        username: env('DATABASE_USERNAME', 'strapi'),
        password: env('DATABASE_HOST', 'strapi123'),
        ssl: env.bool('DATABASE_SSL', false),
      },
      options: {}
    },
  },
});
