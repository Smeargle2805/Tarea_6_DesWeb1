import Express  from "express";
const data = Express();
import {dataPost} from '../controllers/datacontroller.js'
import {validarCookie} from '../helpers/helpercookie.js'

data.post('', validarCookie, dataPost);



export {
    data
}