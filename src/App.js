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

    const userlist = user.map((list) => (
      <li key= {list.id}>
        ID : {list.id} \ NAME : {list.name} \ TEAM :{list.team}
      </li>
    ));

  function get(){
    const url= "/users/get";

    axios.get(url).then(function(response){
      if(response) {  
        const templist = response.data.slice();
        setUser(templist); 

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

    function del() {
      const url= "/users/delete";
  
      axios.delete(url, {
          params : {    
              id: id
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
              <ul>{userlist}</ul>
            <h1 className="App-title">
                <input type= "text" className= "login-input-text"  name= "id"     onChange= {onChange}  placeholder= "id"></input>
                <input type= "text" className= "login-input-text"  name= "name"   onChange= {onChange}  placeholder= "name"></input>
                <input type= "text" className= "login-input-text"  name= "team"   onChange= {onChange}  placeholder= "team"></input>
            </h1>
                <button onClick= {get}>  GET  </button>
                <button onClick= {post}> POST </button>
                <button onClick= {post}> PUT  </button>
                <button onClick= {del}> DELETE </button>
        </header>
    </div>
    )
}
export default App;

