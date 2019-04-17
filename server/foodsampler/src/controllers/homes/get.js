/**
 * @api {get} /homes/:id getHomeByID
 * @apiName getHomeByID
 * @apiGroup Home
 *
 * @apiParam {Number} id The ID of the home

 * @apiSuccess {Array} data about a home
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

const get = ({Home},{config})=> async (req,res,next)=>{

  const {_id} = req.params;

  try{
    const home= await Home.findOne({_id});
    res.status(200).send({home});
  }catch(error){
    next(error);
  }
};

module.exports={get};
