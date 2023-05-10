import * as React from "react";
import { Link } from "react-router-dom";
// import CardCarousel from "./carousel";
import { Carousel } from "flowbite-react";

export default function FlatCard(props) {
  return (
    <div>
      <div>
        <div className="grid sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
          {props.allflats.map((flat) => {
            return (
              <div className="flatobjects" key={flat.id}>
                <div className="max-w-sm">
                  <div className="mx-5 mt-5">
                    <div className="h-56 sm:h-64 xl:h-80 2xl:h-96">
                      <Carousel slide={false}>
                        <img src={flat.pic_url[0]} alt="..." />
                        <img src={flat.pic_url[1]} alt="..." />
                        <img src={flat.pic_url[2]} alt="..." />
                      </Carousel>
                    </div>
                    <Link to={`/${flat.id}`}>
                      <div className="flex flex-row justify-between items-start mt-4">
                        <div>
                          <p className="text-sm text-gray-800 font-bold">
                            {" "}
                            {flat.name}
                          </p>
                          <p className="text-sm text-gray-800">
                            49 kilometers away
                          </p>
                          <p className="text-sm text-gray-800">Aug 18-25</p>
                          <p className="text-sm text-gray-800 mt-2">
                            {" "}
                            <strong>
                              {" "}
                              ${flat.price_per_night} per night{" "}
                            </strong>{" "}
                          </p>
                        </div>
                        <div className="flex flex-row items-center">
                          <svg
                            className="w-6 h-6"
                            fill="currentColor"
                            viewBox="0 0 20 20"
                            xmlns="http://www.w3.org/2000/svg"
                          >
                            <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path>
                          </svg>
                          <p className="text-sm">4,92</p>
                        </div>
                      </div>
                    </Link>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    </div>
  );
}
