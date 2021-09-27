import axios from 'axios';
import './App.css';
import React, {useState, useEffect} from 'react';

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
  /*const [id, setId]     = useState([]);
    const [name, setName] = useState([]);
    const [team, setTeam] = useState([]);
  */

  function get(){
    const url= "/users/get";

    axios.get(url).then(function(response) {
      if (response.data) {
          const templist = response.data.slice();
          setUser(templist);
        }
      console.log("성공");
  })
    .catch(function(error) {
        console.log(id);
        console.log(name);
        console.log(team);
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
              if (response.data) {
                  const templist = response.data.slice();
                  setUser(templist);
                }
              console.log("성공");
          })
          .catch(function(error) {
              console.log(id);
              console.log(name);
              console.log(team);
              console.log("실패");
          })   
      }

      return (
      <div className="App">
          <header className="App-header">
              ID: {id} NAME: {name} TEAM: {team} 
              
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

