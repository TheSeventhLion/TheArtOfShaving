module.exports = {

massive_URI: "postgres://postgres:postgres@localhost:7777/TOAS",
session_secret: "TOAS-secret",
initialize_log: true,
AUTH_CONFIG: {
    domain: 'theseventhlion.auth0.com',
    clientID: 'znLoQC8I079xlP8Ye0WXv0U7nuR7l3CC',
    clientSecret: '2xJtpFUzwwZnoj-ZV8W6fOnYxZDfhU3o_wIZH9Kf82SnCHGNjV8BnhZBDrCDNpgz',
    callbackURL: 'http://localhost:7000/auth/callback'
}
};