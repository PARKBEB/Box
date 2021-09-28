import './App.css';
import Login from './Login';
import Main from './Main';
import Tboard from './Tboard';
import Tmanagement from './Tmanagement';
import { BrowserRouter,Route,Switch } from 'react-router-dom';

function App() {  
  return (
    <BrowserRouter>
        <Switch>
          <Route path = "/" exact={true}  component={Login}/>
          <Route path = "/Main"  component={Main}/>
          <Route path = "/Tboard"  component={Tboard}/>
          <Route path = "/Tmanagement"  component={Tmanagement}/>
        </Switch>
    </BrowserRouter>
  );
}

export default App;