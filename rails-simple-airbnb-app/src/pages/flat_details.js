import axios from "axios";
import React, { useState,useEffect  } from "react";
import { useParams } from 'react-router-dom';

    export default function FlatDetails() {
      const { id } = useParams();

      const [flat, setFlat] = useState("");

      useEffect(() => {
        axios
          .get("/api/version1/flats/" + id)
          .then((response) => {
            setFlat(response.data);
          })
          .catch((error) => console.log(error));
      }, []);

      return (
        <div className="mx-16">
            <div>
                <h1 className="py-3">{flat.name}</h1>
            </div>
          <div className="container m-auto grid grid-cols-1 lg:grid-cols-4 grid-rows-2 gap-4">
            <div className="col-span-1 lg:col-span-2 row-span-2 row-end-auto">
              <img src={flat.pic_url} alt="house" />
            </div>
            <div>
            <img src={flat.pic_url} alt="house" />
            </div>
            <div>
            <img src={flat.pic_url} alt="house" />
            </div>
            <div>
            <img src={flat.pic_url} alt="house" />
            </div>
            <div>
            <img src={flat.pic_url} alt="house" />
            </div>
          </div>
          <h1 className="py-3">{flat.name}</h1>
          <p className="py-3">{flat.description}</p>

        </div>
      );
    }