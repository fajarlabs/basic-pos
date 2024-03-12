const jwt = require('jsonwebtoken');
const { jsonError } = require('../helper');

const authorization = (req, res, next) => {
  let token = req.headers.authorization;

  // periksa apakah ada text awalan 'bearer'
  if(token){
    const data_token = token.split(" ");
    if(data_token[0].toLowerCase() == 'bearer'){
      token = data_token[1];
    }
  }

  // verifikasi JWT token
  jwt.verify(token, process.env.SECRET_KEY, (error) => {
    if(error) {
      const errorResponse = {
        code: 401,
        message: `Unauthorized: ${error.message}`
      };
      return jsonError(res, errorResponse, 401);
    } else {
      next();
    }
  });
};

module.exports = authorization;
