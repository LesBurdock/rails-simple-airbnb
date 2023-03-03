import React, { Component } from "react";
import axios from "axios";
import { Card } from 'flowbite-react';

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
        <div className="grid sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6" >
          {this.state.flats.map((flat) => {
            return (
              <div className="flatobjects"flats={flat} key={flat.id}>
                <div className="max-w-sm">
                <Card imgSrc={flat.pic_url}>
                    <h5 className="text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                      {flat.name}
                    </h5>
                    <p className="font-normal text-gray-700 dark:text-gray-400">
                    {flat.description}
                    </p>
                    <h5 className="text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                      ${flat.price_per_night} per night
                    </h5>
                  </Card>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    );
  }
}

export default Flatcard;