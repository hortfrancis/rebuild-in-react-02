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
