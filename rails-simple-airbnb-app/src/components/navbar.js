import React from "react";
import { Navbar, Dropdown, Avatar } from 'flowbite-react';
import { NavLink} from 'react-router-dom';
import airbnblogo from "../airbnblogo.svg";


const NavBar = () => {
  return (
    <Navbar fluid={true} rounded={true}>
        <NavLink to="/">
          <img src={airbnblogo} className="mr-3 lg:h-19 md:h-19 sm:h-11" alt="Airbnb Logo" />
        </NavLink>
        <span className="self-center whitespace-nowrap text-xl font-semibold dark:text-white"></span>
      <div className="flex md:order-2">
        <Dropdown
          arrowIcon={false}
          inline={true}
          label={
            <Avatar
              alt="User settings"
              img="https://flowbite.com/docs/images/people/profile-picture-5.jpg"
              rounded={true}
            />
          }
        >
          <Dropdown.Header>
            <span className="block text-sm">Bonnie Green</span>
            <span className="block truncate text-sm font-medium">
              name@flowbite.com
            </span>
          </Dropdown.Header>
          <Dropdown.Item><NavLink to={`/addFlat`}>Dashboard</NavLink></Dropdown.Item>
          <Dropdown.Item>Settings</Dropdown.Item>
          <Dropdown.Item>Earnings</Dropdown.Item>
          <Dropdown.Divider />
          <Dropdown.Item>Sign out</Dropdown.Item>
        </Dropdown>
      </div>
    </Navbar>
  );
};

export default NavBar;

