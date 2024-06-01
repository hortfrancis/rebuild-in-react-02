import React, { useState } from 'react';
import Header from './components/Header/Header';
import MainSection from './components/MainSection/MainSection';
import FrogTable from './components/FrogTable/FrogTable';
import Pagination from './components/Pagination/Pagination';
import './App.css';

const App = () => {
  const [searchQuery, setSearchQuery] = useState('');
  const [frogs, setFrogs] = useState([
    { name: 'Bob', species: 'Poison Dart Frog', habitat: 'Rainforest' },
    { name: 'Jeff', species: 'American Bullfrog', habitat: 'Pond' },
    { name: 'Susan', species: 'Red-Eyed Tree Frog', habitat: 'Tree' },
    { name: 'Chloe', species: 'Glass Frog', habitat: 'Stream' }
  ]);
  const [currentPage, setCurrentPage] = useState(1);

  const handleSearchChange = (query) => {
    setSearchQuery(query);
  };

  const handleAddFrog = () => {
    // Logic to add a new frog
  };

  const handlePageChange = (page) => {
    setCurrentPage(page);
  };

  const filteredFrogs = frogs.filter(frog =>
    frog.name.toLowerCase().includes(searchQuery.toLowerCase())
  );

  return (
    <div className="app">
      <Header
        logo="FrogDirectory"
        navLinks={['Frogs']}
        isLoggedIn={true}
      />
      <MainSection
        title="Frog List"
        onSearch={handleSearchChange}
        onAddFrog={handleAddFrog}
      />
      <FrogTable frogs={filteredFrogs} />
      <Pagination
        currentPage={currentPage}
        totalItems={frogs.length}
        onPageChange={handlePageChange}
      />
    </div>
  );
};

export default App;
