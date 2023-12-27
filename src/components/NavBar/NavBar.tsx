"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import {
  Navbar,
  NavbarBrand,
  NavbarCollapse,
  NavbarLink,
} from "flowbite-react";

export const NavBar = () => {
  const links = [
    { url: "/", name: "Home" },
    { url: "/blog", name: "Blog" },
    { url: "/meta", name: "Meta" },
  ];
  const pathname = usePathname();
  return (
    <Navbar fluid>
      <NavbarBrand as={Link} href="/">
        <img
          src="/icons8-laptop-cute-color-96.png"
          className="mr-3 h-6 sm:h-9"
        ></img>
        <span className="self-center whitespace-nowrap text-xl font-semibold dark:text-white">
          Khai
        </span>
      </NavbarBrand>

      <Navbar.Toggle />

      <NavbarCollapse>
        {links.map((link, index) => (
          <NavbarLink
            active={pathname === link.url}
            href={link.url}
            key={index}
          >
            {link.name}
          </NavbarLink>
        ))}
      </NavbarCollapse>
    </Navbar>
  );
};
