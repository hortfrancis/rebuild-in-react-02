import React from 'react';
import SearchBar from '../SearchBar/SearchBar';
import AddFrogButton from '../AddFrogButton/AddFrogButton';
import './MainSection.css';

const MainSection = ({ title, onSearch, onAddFrog }) => {
  return (
    <main className="main-section">
      <h1>{title}</h1>
      <SearchBar onSearchChange={onSearch} />
      <AddFrogButton onClick={onAddFrog} />
    </main>
  );
};

export default MainSection;
