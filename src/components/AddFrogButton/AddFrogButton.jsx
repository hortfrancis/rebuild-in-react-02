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
