import './App.css';
import axios from 'axios';
import React, {useState} from 'react';

function App() {
  const [user, setUser] = useState([]);

  const [inputs, setInputs] = useState({
      id: "",
      name: "",
      team: "",
    });

  const { id, name, team } = inputs;

  const onChange = (e) => {                   
      const { value, name } = e.target;
      setInputs({
        ...inputs,
        [name]: value,
      });
    };
    
  
  function get(){
    const url= "/users/get";

    axios.get(url).then(function(response) {
      if(response.data) {
        setUser(response.data[0]);
        console.log(response);
        console.log("성공");
      }
  })
    .catch(function(error) {
      console.log("실패");
    }) 
  }

  function post() {
    const url= "/users/post";

    axios.post(url, null, {
        params : {    
            id:   id, 
            name: name,
            team: team
          }
        })
        .then(function(response) {
            console.log("성공");
        })
        .catch(function(error) {
            console.log("실패");
        })   
    }

    return (
    <div className="App">
        <header className="App-header">
            ID: {user.id} &nbsp;&nbsp;&nbsp; NAME: {user.name} &nbsp;&nbsp;&nbsp; TEAM: {user.team}
            <h1 className="App-title">
                <input type= "text" className= "login-input-text"  name= "id"     onChange= {onChange}  placeholder= "id"></input>
                <input type= "text" className= "login-input-text"  name= "name"   onChange= {onChange}  placeholder= "name"></input>
                <input type= "text" className= "login-input-text"  name= "team"   onChange= {onChange}  placeholder= "team"></input>
            </h1>
                <button onClick= {get}>  GET  </button>
                <button onClick= {post}> POST </button>
                <button onClick= {post}> PUT  </button>
                <button onClick= {post}> DELETE </button>
        </header>
    </div>
    )
}
export default App;

