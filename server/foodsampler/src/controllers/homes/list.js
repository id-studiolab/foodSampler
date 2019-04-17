/**
 * @api {get} /homes/ getHomesList
 * @apiName getHomesList
 * @apiGroup Home
 *
 * @apiParam {Number} [limit] how many result to query.
 * @apiParam {Number} [skip] how many data to skip.
 * @apiParam {String} [search] regex to search for a series of homes by nickname.
 *
 * @apiSuccess {Array} list of homes addresses found.
 * @apiSuccessExample {json} Success-Response:
 *    {
 *     "Homes": [
 *         {
 *             "_id": "5cb7393717966a53ed44ce37",
 *             "nick_name": "romagnetti_home",
 *             "address": "walenburgerweg 62a",
 *             "__v": 0
 *         },
 *         {
 *             "_id": "5cb7393217966a53ed44ce36",
 *             "nick_name": "romagnetti_home",
 *             "address": "walenburgerweg 62a",
 *             "__v": 0
 *         },
 *         {
 *             "_id": "5cb738fd17966a53ed44ce35",
 *             "nick_name": "studiolab",
 *             "address": "Delft",
 *             "__v": 0
 *         }
 *     ]
 *    }
 */


const _ = require('lodash');

const list = ({ Home }, { config }) => async (req, res, next) => {
  let { limit, skip, search } = req.query;
  skip = skip ? parseInt(skip, 10) : 0;
  limit = limit ? parseInt(limit, 10) : 100;

  try {
    const query = {};
    if (search) {
      _.extend(query, { nick_name: new RegExp(`${search}`, 'i') })
    }
    const Homes = await Home.find(query)
      .skip(skip)
      .limit(limit)
      .sort({ _id: -1 });

    res.status(200).send({ Homes });
  } catch (error) {
    next(error);
  }
};

module.exports= { list };
