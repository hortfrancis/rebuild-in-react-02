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
