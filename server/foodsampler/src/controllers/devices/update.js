/**
 * @api {patch} /devices/ updateDevice
 * @apiName updateDevice
 * @apiGroup Device
 *
 * @apiParam {Number} id The ID of the device to update
 * @apiParam {String} [nick_name] a friendly name of the house.
 * @apiParam {String} [address] the house address.
 *
 * @apiSuccess {String[]} the data of the house just added to the db.
 * @apiSuccessExample {json} Success-Response:
 *     {
 *    "device": {
 *        "_id": "5cb72ad66ac4d24f89bb4c11",
 *        "nick_name": "romagnetti_device",
 *        "address": "walenburgerweg 62a",
 *        "__v": 0
 *        }
 *    }
 */


const _ = require('lodash');

const update = ({ Device }, { config }) => async (req, res, next) => {
  const { _id } = req.params;
  try {
    const device = await Device.findOne({ _id });
    _.extend(device, req.body);
    await device.save();
    res.status(200).send({ device });
  } catch (error) {
    next(error);
  }
};

module.exports= { update };
