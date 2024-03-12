const express = require('express');
const Router = express.Router();
const asyncHandler = require('../middleware/async');

const { outletValidation } = require('../middleware/validation');

const {
  getAllOutlets,
  getOutlet,
  postOutlet,
  putOutlet,
  deleteOutlet
} = require('../controller/outlets');

Router
  .get('/', getAllOutlets)
  .get('/:id', getOutlet)
  .post('/', outletValidation, postOutlet)
  .put('/:id', outletValidation, putOutlet)
  .delete('/:id', deleteOutlet);

module.exports = Router;
