/**
 * @api {post} /homes/ createHome
 * @apiName addHome
 * @apiGroup Home
 *
 * @apiParam {String} nick_name a friendly name of the house.
 * @apiParam {String} [address] the house address.
 *
 * @apiSuccess {String[]} the data of the house just added to the db.
 * @apiSuccessExample {json} Success-Response:
 *     {
 *    "home": {
 *        "_id": "5cb72ad66ac4d24f89bb4c11",
 *        "nick_name": "romagnetti_home",
 *        "address": "walenburgerweg 62a",
 *        "__v": 0
 *        }
 *    }
 */



const { NotAcceptable } = require('rest-api-errors');
const { sendOne } = require('../../middleware');
const _ = require('lodash');

const create = ({ Home }, { config }) => async (req, res, next) => {
  try {
    const home = new Home();

    console.log(req.body);

    if (!req.body.nick_name) {
      throw new NotAcceptable(405, 'you should pass a nickname');
    }
    _.extend(home, req.body);
    await home.save();

    return sendOne(res, { home });
  } catch (error) {
    next(error);
  }
};

module.exports= { create };
