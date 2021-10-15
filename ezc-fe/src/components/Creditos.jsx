import { useEffect, useState } from "react";
import { Link } from "react-router-dom";

import { Credito } from "./Credito";

const Creditos = () => {
  const [creditos, setCreditos] = useState([]);

  const getCreditos = () => {
    fetch("http://localhost:8000/creditos")
      .then(res => res.json())
      .then(sol_creds => {
        setCreditos(sol_creds);
      });
  };

  useEffect(() => {
    getCreditos();
  }, []);

  useEffect(() => {
    // console.log(creditos);
  }, [creditos]);

  return (
    <>
      <header className="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
        <Link
          to="/"
          className="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none"
        >
          <svg className="bi me-2" width="40" height="32">
          </svg>
          <span className="fs-4">Inicio</span>
        </Link>

        <ul className="nav nav-pills">
          <li className="nav-item">
            <Link to="/" className="nav-link">Home</Link>
          </li>
          <li className="nav-item">
            <Link to="#" className="nav-link">Features</Link>
          </li>
          <li className="nav-item">
            <Link to="/about" className="nav-link">About</Link>
          </li>
        </ul>
      </header>
      <div className="container">
        {creditos.filter(credito => !credito.evaluado)
          .map(credito => (
            <Credito key={credito.id} credito={credito} />
          ))}
      </div>
    </>
  );
};

export { Creditos };
