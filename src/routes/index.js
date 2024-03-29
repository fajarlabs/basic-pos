const express = require('express');
const Router = express.Router();

const authorization = require('../middleware/authorization');
const authentication = require('./authentication');
const categories = require('./categories');
const products = require('./products');
const orders = require('./orders');
const users = require('./users');
const outlets = require('./outlets');

Router
  .use('/categories', authorization, categories)
  .use('/products', authorization, products)
  .use('/orders', authorization, orders)
  .use('/users', authorization, users)
  .use('/outlets', authorization, outlets)
  .use('/', authentication);

module.exports = Router;
