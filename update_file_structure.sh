#!/bin/bash

# Create components directories and files
mkdir -p src/components/Header
touch src/components/Header/Header.jsx
touch src/components/Header/Header.css

mkdir -p src/components/MainSection
touch src/components/MainSection/MainSection.jsx
touch src/components/MainSection/MainSection.css

mkdir -p src/components/SearchBar
touch src/components/SearchBar/SearchBar.jsx
touch src/components/SearchBar/SearchBar.css

mkdir -p src/components/AddFrogButton
touch src/components/AddFrogButton/AddFrogButton.jsx
touch src/components/AddFrogButton/AddFrogButton.css

mkdir -p src/components/FrogTable
touch src/components/FrogTable/FrogTable.jsx
touch src/components/FrogTable/FrogTable.css
touch src/components/FrogTable/FrogTableHeader.jsx
touch src/components/FrogTable/FrogTableHeader.css
touch src/components/FrogTable/FrogTableRow.jsx
touch src/components/FrogTable/FrogTableRow.css

mkdir -p src/components/Pagination
touch src/components/Pagination/Pagination.jsx
touch src/components/Pagination/Pagination.css

# Output a message indicating the script has finished
echo "Project structure updated successfully."
