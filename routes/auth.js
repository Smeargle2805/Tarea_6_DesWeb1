import Express  from "express";
const auth = Express();
import { autenticacion } from "../controllers/authcontroller.js";

auth.post( '',  autenticacion);

export {
    auth
}