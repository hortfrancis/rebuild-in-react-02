import React from 'react';
import './SearchBar.css';

const SearchBar = ({ placeholder, onSearchChange }) => {
  return (
    <div className="search-bar">
      <input
        type="text"
        placeholder={placeholder}
        onChange={(e) => onSearchChange(e.target.value)}
      />
      <button type="submit">Search</button>
    </div>
  );
};

export default SearchBar;
