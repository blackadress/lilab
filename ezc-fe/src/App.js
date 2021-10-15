import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import "./App.css";

import { About } from "./components/About";
import { Creditos } from "./components/Creditos";
import { Inicio } from "./components/Inicio";

function App() {
  return (
    <Router className="App">
      <Switch>
        <Route path="/" exact component={Inicio} />
        <Route path="/creditos" exact component={Creditos} />
        <Route path="/about" exact component={About} />
      </Switch>
    </Router>
  );
}

export default App;
