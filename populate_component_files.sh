#!/bin/bash

# Populate Header component
cat <<EOL > src/components/Header/Header.jsx
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
EOL

# Populate MainSection component
cat <<EOL > src/components/MainSection/MainSection.jsx
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
EOL

# Populate SearchBar component
cat <<EOL > src/components/SearchBar/SearchBar.jsx
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
EOL

# Populate AddFrogButton component
cat <<EOL > src/components/AddFrogButton/AddFrogButton.jsx
import React from 'react';
import './AddFrogButton.css';

const AddFrogButton = ({ onClick }) => {
  return (
    <button className="add-frog-button" onClick={onClick}>
      Add Frog
    </button>
  );
};

export default AddFrogButton;
EOL

# Populate FrogTable component
cat <<EOL > src/components/FrogTable/FrogTable.jsx
import React from 'react';
import FrogTableHeader from './FrogTableHeader';
import FrogTableRow from './FrogTableRow';
import './FrogTable.css';

const FrogTable = ({ frogs }) => {
  return (
    <table className="frog-table">
      <FrogTableHeader />
      <tbody>
        {frogs.map((frog) => (
          <FrogTableRow key={frog.name} frog={frog} />
        ))}
      </tbody>
    </table>
  );
};

export default FrogTable;
EOL

# Populate FrogTableHeader component
cat <<EOL > src/components/FrogTable/FrogTableHeader.jsx
import React from 'react';
import './FrogTableHeader.css';

const FrogTableHeader = () => {
  return (
    <thead>
      <tr>
        <th>Name</th>
        <th>Species</th>
        <th>Habitat</th>
      </tr>
    </thead>
  );
};

export default FrogTableHeader;
EOL

# Populate FrogTableRow component
cat <<EOL > src/components/FrogTable/FrogTableRow.jsx
import React from 'react';
import './FrogTableRow.css';

const FrogTableRow = ({ frog }) => {
  return (
    <tr>
      <td>{frog.name}</td>
      <td>{frog.species}</td>
      <td>{frog.habitat}</td>
    </tr>
  );
};

export default FrogTableRow;
EOL

# Populate Pagination component
cat <<EOL > src/components/Pagination/Pagination.jsx
import React from 'react';
import './Pagination.css';

const Pagination = ({ currentPage, totalItems, onPageChange }) => {
  const totalPages = Math.ceil(totalItems / 10);

  return (
    <div className="pagination">
      <span>{\`Page \${currentPage} of \${totalPages}\`}</span>
      <button onClick={() => onPageChange(currentPage - 1)} disabled={currentPage === 1}>Previous</button>
      <button onClick={() => onPageChange(currentPage + 1)} disabled={currentPage === totalPages}>Next</button>
    </div>
  );
};

export default Pagination;
EOL

# Populate App component
cat <<EOL > src/App.jsx
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
EOL

# Output a message indicating the script has finished
echo "Component files populated successfully."
