import React, { Component } from "react";
import axios from "axios";

class Flatcard extends Component {
  constructor(props) {
    super(props);
    this.state = {
    flats: [],
    };
  }

loadflats() {
  axios
    .get("/api/version1/flats")
    .then((res) => {
      this.setState({ flats: res.data });
    })
    .catch((error) => console.log(error));
}

componentDidMount() {
  this.loadflats();
}

render() {
  return (
      <div>
        <div className="card">
          <div>here are some flats</div>
        </div>
        <ul className="listItems">
            {this.state.flats.map((flat) => {
              return (
                <div className="item" flats={flat} key={flat.id}>
                    <label className="itemDisplay">{flat.name}</label>
                    <img src={flat.pic_url} alt="flat_image"/>
                </div>
              );
            })}
          </ul>
        </div>
    );
  }
}


export default Flatcard;