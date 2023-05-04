import React from "react";
import {Carousel} from "flowbite-react";

const CardCarousel = (props) => {
  console.log(props.flatPic);
  return (
    <div className="h-56 w-full object-cover object-center sm:h-64 xl:h-80 2xl:h-96">
    <Carousel
      leftControl=""
      rightControl=""
    >
      <img
        src={props.flatPic}
        alt="pic1"
      />
      <img
         src={props.flatPic}
         alt="pic1"
      />
      <img
         src={props.flatPic}
         alt="pic1"
      />
      <img
         src={props.flatPic}
         alt="pic1"
      />
      <img
         src={props.flatPic}
         alt="pic1"
      />
    </Carousel>
  </div>
  );
};

export default CardCarousel;