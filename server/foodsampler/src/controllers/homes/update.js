/**
 * @api {patch} /homes/ updateHome
 * @apiName updateHome
 * @apiGroup Home
 *
 * @apiParam {Number} id The ID of the home to update
 * @apiParam {String} [nick_name] a friendly name of the house.
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


const _ = require('lodash');

const update = ({ Home }, { config }) => async (req, res, next) => {
  const { _id } = req.params;
  try {
    const home = await Home.findOne({ _id });
    _.extend(home, req.body);
    await home.save();
    res.status(200).send({ home });
  } catch (error) {
    next(error);
  }
};

module.exports= { update };
