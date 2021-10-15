import { Link } from "react-router-dom";

const Inicio = () => {
  return (
    <header className="App-header">
      <p>
        Ez Creditos -- Olvídate de trabajar hasta tarde
      </p>
      <Link
        to="/creditos"
        className="App-link"
      >
        Ver Solicitudes de Crédito
      </Link>
    </header>
  );
};

export { Inicio };
