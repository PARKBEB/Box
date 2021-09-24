import './App.css';
import Login from './Login';
import Main from './Main';
import Tboard from './Tboard';
import { BrowserRouter,Route,Switch } from 'react-router-dom';

function App() {  
  return (
    <BrowserRouter>
        <Switch>
          <Route path = "/Login"  component={Login}/>
          <Route path = "/Main"   component={Main}/>
          <Route path = "/Tboard"   component={Tboard}/>
        </Switch>
    </BrowserRouter>
  );
}

export default App;