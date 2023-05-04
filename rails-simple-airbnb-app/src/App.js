import { Route, Routes } from 'react-router-dom';
import './App.css';
import 'flowbite';
import NavBar from "./components/navbar";
import Home from "./pages/Home";
import FlatDetails from './pages/flat_details';

function App() {
  return (
    <div className="App">
      <div className="mainContainer">
        <NavBar></NavBar>
        <Routes>
          <Route exact path="/" element={<Home />} />
          <Route path="/:id" element={<FlatDetails/>} exact></Route>
        </Routes>
      </div>
    </div>
  );
}

export default App;

