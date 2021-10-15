import { useState } from "react";

const Credito = ({ credito }) => {
  const [cred, setCred] = useState(credito);
  const handleAprobar = () => {
    const newCredito = { ...cred };
    newCredito.aceptado = true;
    newCredito.evaluado = true;

    setCred(newCredito);

    fetch(`http://localhost:8000/credito/${cred.id}`, {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        monto: newCredito.monto,
        aceptado: newCredito.aceptado,
        evaluado: newCredito.evaluado,
      }),
    })
      .then(res => res.json())
      // solucion hacky en lugar de hacerlo en el parent
      .then(_ => window.location.reload());
  };

  const handleRechazar = () => {
    const newCredito = { ...cred };
    newCredito.aceptado = false;
    newCredito.evaluado = true;

    setCred(newCredito);

    fetch(`http://localhost:8000/credito/${cred.id}`, {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        monto: newCredito.monto,
        aceptado: newCredito.aceptado,
        evaluado: newCredito.evaluado,
      }),
    })
      .then(res => res.json())
      // solucion hacky en lugar de hacerlo en el parent
      .then(_ => window.location.reload());
  };
  return (
    <div className="card">
      <div className="card-body">
        <h5 className="card-title">Card title</h5>
        <h6 className="card-subtitle mb-2 text-muted">Card subtitle</h6>
        <p className="card-text">
          {`${credito.cliente.nombres} ${credito.cliente.apellidos}`}
        </p>
        <strong className="card-text">
          {`MONTO: ${credito.monto / 100}.00`}
        </strong>
        <br />
        <strong className="card-text">
          {`PUNTAJE IA: ${credito.cliente.pts_ia}`}
        </strong>
        <br />
        <button type="button" className="btn btn-success" onClick={handleAprobar}>Aprobar</button>
        <button type="button" className="btn btn-danger" onClick={handleRechazar}>Rechazar</button>
      </div>
    </div>
  );
};

export { Credito };
