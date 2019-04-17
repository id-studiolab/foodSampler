/**
 * @api {get} /devices/:id removeDeviceByID
 * @apiName removeDeviceByID
 * @apiGroup Device
 *
 * @apiParam {Number} id The ID of the device to remove

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

const remove = ({ Device }, { config }) => async (req, res, next) => {
  const { _id } = req.params;
  try {
    const device = await Device.findOne({ _id });
    await Device.remove({ _id });  
    res.status(200).send({ device });
  } catch (error) {
    next(error);
  }
};

module.exports= { remove };
