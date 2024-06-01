import React from 'react';
import './Pagination.css';

const Pagination = ({ currentPage, totalItems, onPageChange }) => {
  const totalPages = Math.ceil(totalItems / 10);

  return (
    <div className="pagination">
      <span>{`Page ${currentPage} of ${totalPages}`}</span>
      <button onClick={() => onPageChange(currentPage - 1)} disabled={currentPage === 1}>Previous</button>
      <button onClick={() => onPageChange(currentPage + 1)} disabled={currentPage === totalPages}>Next</button>
    </div>
  );
};

export default Pagination;
