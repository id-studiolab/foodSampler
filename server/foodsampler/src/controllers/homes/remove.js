/**
 * @api {get} /homes/:id removeHomeByID
 * @apiName removeHomeByID
 * @apiGroup Home
 *
 * @apiParam {Number} id The ID of the home to remove

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

const remove = ({ Home }, { config }) => async (req, res, next) => {
  const { _id } = req.params;
  try {
    const home = await Home.findOne({ _id });
    await Home.remove({ _id });  
    res.status(200).send({ home });
  } catch (error) {
    next(error);
  }
};

module.exports= { remove };
