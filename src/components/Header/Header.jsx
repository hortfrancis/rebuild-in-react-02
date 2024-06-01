import React from 'react';
import './Header.css';

const Header = ({ logo, navLinks, isLoggedIn }) => {
  return (
    <header className="header">
      <div className="logo">{logo}</div>
      <nav>
        <ul>
          {navLinks.map((link, index) => (
            <li key={index}>{link}</li>
          ))}
        </ul>
      </nav>
      <div className="login">{isLoggedIn ? 'Logout' : 'Login'}</div>
    </header>
  );
};

export default Header;
