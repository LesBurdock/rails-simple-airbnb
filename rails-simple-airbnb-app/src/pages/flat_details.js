import axios from "axios";
import React, { useState,useEffect  } from "react";
import { useParams, Link } from 'react-router-dom';

    export default function FlatDetails() {
      const { id } = useParams();

      const [flat, setFlat] = useState({});

      useEffect(() => {
        axios
          .get("/api/version1/flats/" + id)
          .then((response) => {
            setFlat(response.data);
          })
          .catch((error) => console.log(error));
      }, [id]);

      if (!flat.pic_url) return null;

      return (
        <div className="mx-16">
            <div>
                <h1 className="py-3">{flat.name}</h1>
            </div>
              <div className="grid grid-rows-2 grid-cols-3 gap-4">
                {flat.pic_url.map((photo,index)=>{
                return(
                  <div key={index} className={index === 0 ? 'row-span-2 col-span-2' : 'row-span-1 col-span-1'} >
                  <img src={photo} alt="house" className="w-full h-72 min-h-full object-cover" />
                 </div>
                )}
                )}
          </div>
          <h1 className="py-3">{flat.name}</h1>
          <p className="py-3">{flat.description}</p>
        </div>
      );
    }