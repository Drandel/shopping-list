import React from "react";
import { Route, Routes } from 'react-router-dom'
import Stores from "./Stores/Stores";
import Store from "./Store/Store";

const App = () => {
    return(
        <Routes>
            <Route path="/" element={<Stores/>} />
            <Route path="/stores/:slug" element={<Store/>} />
        </Routes>
    )
}

export default App