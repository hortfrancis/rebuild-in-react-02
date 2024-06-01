#!/bin/bash

# Populate Header CSS
cat <<EOL > src/components/Header/Header.css
.header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px 20px;
  background-color: #f8f9fa;
  border-bottom: 1px solid #e9ecef;
}

.logo {
  font-size: 1.5em;
  font-weight: bold;
}

nav ul {
  list-style: none;
  display: flex;
  gap: 15px;
}

nav li {
  font-size: 1.2em;
}

.login {
  font-size: 1em;
  cursor: pointer;
}
EOL

# Populate MainSection CSS
cat <<EOL > src/components/MainSection/MainSection.css
.main-section {
  padding: 20px;
  text-align: center;
}

.main-section h1 {
  font-size: 2em;
  margin-bottom: 20px;
}
EOL

# Populate SearchBar CSS
cat <<EOL > src/components/SearchBar/SearchBar.css
.search-bar {
  display: inline-block;
  margin-right: 20px;
}

.search-bar input {
  padding: 10px;
  border: 1px solid #ced4da;
  border-radius: 5px;
}

.search-bar button {
  padding: 10px 15px;
  background-color: #007bff;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.search-bar button:hover {
  background-color: #0056b3;
}
EOL

# Populate AddFrogButton CSS
cat <<EOL > src/components/AddFrogButton/AddFrogButton.css
.add-frog-button {
  padding: 10px 15px;
  background-color: #28a745;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.add-frog-button:hover {
  background-color: #218838;
}
EOL

# Populate FrogTable CSS
cat <<EOL > src/components/FrogTable/FrogTable.css
.frog-table {
  width: 100%;
  border-collapse: collapse;
  margin: 20px 0;
}

.frog-table th, .frog-table td {
  padding: 12px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

.frog-table th {
  background-color: #f1f1f1;
  font-weight: bold;
}

.frog-table tr:nth-child(even) {
  background-color: #f9f9f9;
}
EOL

# Populate FrogTableHeader CSS
cat <<EOL > src/components/FrogTable/FrogTableHeader.css
EOL

# Populate FrogTableRow CSS
cat <<EOL > src/components/FrogTable/FrogTableRow.css
EOL

# Populate Pagination CSS
cat <<EOL > src/components/Pagination/Pagination.css
.pagination {
  text-align: center;
  margin: 20px 0;
}

.pagination button {
  padding: 10px 15px;
  margin: 0 5px;
  background-color: #007bff;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.pagination button:disabled {
  background-color: #6c757d;
}

.pagination button:hover:not(:disabled) {
  background-color: #0056b3;
}
EOL

# Output a message indicating the script has finished
echo "CSS files populated successfully."
