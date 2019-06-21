module.exports = {
  bodyLimit: '100kb',
  passport: {
    tokenTime: 2592000, // 60*60*24*30 -> 30 days
    secretAuthToken: process.env.SECRET_TOKEN,
    resetPasswordExpires: 3600000 * 24, // 24 hour
  },
  ttn: {
    TTN_ACCESSKEY: "ttn-account-v2.r4dBL06WOlsOff0EHmcGoCdR1xx55FAQzil-QyU3wW4",
    TTN_APPID: "foodsampler",
  },
  BEARER_TOKEN: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVkMGNhYjg2ZGVlZjZmNmFjMmY1NmRhNiIsImlhdCI6MTU2MTExMTQzMiwiZXhwIjoxNTYzNzAzNDMyfQ.fniquVEmhv1qab1htODxUWkEuKLl320kcAYtcOJrYo0"
};