import axios from 'axios';
import './App.css';
import React, {useState} from 'react';

function App() {
  const [uer, setUser] =useState([]);
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
      console.log("성공");
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
            ID: {id}   &nbsp;&nbsp;&nbsp;&nbsp; NAME: {name} &nbsp;&nbsp;&nbsp;&nbsp; TEAM: {team} 
            <h1 className="App-title">
                <input type= "text" className= "login-input-text"  name= "id"   onChange= {onChange}  placeholder= "id"></input>
                <input type= "text" className= "login-input-text"  name= "name" onChange= {onChange}  placeholder= "name"></input>
                <input type= "text" className= "login-input-text"  name= "team" onChange= {onChange}  placeholder= "team"></input>
            </h1>
                <button onClick= {get}> GET </button>
                <button onClick= {post}> POST </button>
                <button onClick= {post}> PUT </button>
                <button onClick= {post}> DELETE </button>
        </header>
    </div>
    )
}
export default App;

