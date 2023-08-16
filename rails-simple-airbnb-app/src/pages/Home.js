import * as React from "react";
import {useEffect, useState} from "react";
import {API_BASE_URL} from "../config";
import FlatCard from "../components/flatCard.js";
import axios from "axios";
  
  export default function Home() {
    const [allflats, setAllFlats] = useState("");

    useEffect(() => {
      axios
        .get(`${API_BASE_URL}/api/version1/flats`)
        .then((response) => {
          setAllFlats(response.data);
        })
        .catch((error) => console.log(error));
    }, []);

    if (allflats.length > 0) {
      return (
        <div>
          <div>
            <FlatCard allflats={allflats}></FlatCard>
          </div>
        </div>
      );
    } else return "nothing to see here";
  }