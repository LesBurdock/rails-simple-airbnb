import logo from './logo.svg';
import './App.css';
import 'flowbite';
import FlatCard from "./components/flatCard";
import NavBar from "./components/navbar";
import CardCarousel from "./components/carousel";

function App() {
  return (
    <div className="App">
      <NavBar></NavBar>
      <div className="mainContainer">
        <FlatCard></FlatCard>
      </div>
    </div>
  );
}

export default App;
