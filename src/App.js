import React, { useState } from 'react';
import axios from 'axios';
import './App.css';

function App() {

    const [id, setId]     = useState([]);
    const [name, setName] = useState([]);
    const [team, setTeam] = useState([]);

    function post() {
        const url = "/users/post";
        axios.post(url, {
            id: {id},
            name: {name},
            team: {team}
        })
        .then(function(response) {
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
                    <input type= "text" className= "login-input-text"  name= {id}   placeholder= "id"></input>
                    <input type= "text" className= "login-input-text"  name= {name} placeholder= "name"></input>
                    <input type= "text" className= "login-input-text"  name= {team} placeholder= "team"></input>
                </h1>
                    <button onClick= {post}> GET </button>
                    <button onClick= {post}> POST </button>
                    <button onClick= {post}> PUT </button>
                    <button onClick= {post}> DELETE </button>
            </header>
        </div>
        )
}
export default App;